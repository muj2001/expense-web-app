class UsersController < ApplicationController
  before_action :set_user

  def show
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
    unless @user
      redirect_to root_path
    end
  end
end
