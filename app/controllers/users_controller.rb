class UsersController < ApplicationController
  before_action :ensure_current_user, {only: [:edit, :update]}
  def show
     @user = User.find(params[:id])
  end
  def edit
  end
  def index
   @users = User.all
  end
  def update
  end
end


