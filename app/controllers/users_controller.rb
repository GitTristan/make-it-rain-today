class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Booya! Input saved. Keep truckin'"
      render :show
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:slack_org, :plan_id, :slack_webhook)
  end


end
