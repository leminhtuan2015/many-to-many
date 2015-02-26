class UserSkillsController < ApplicationController
  def show
    @user = User.find params[:user_id]
    @skills = Skill.all	
  end

  def update
     user = User.find params[:user_id]
    if user.update_attributes user_skill_params
      redirect_to user_path params[:user_id]
    else
    	redirect_to user_user_skills_path params[:user_id]
    end
  end

  def user_skill_params
    params.require(:user).permit(skill_ids: [])
  end
end
