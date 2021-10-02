class UsersController < ApplicationController

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image_id)
  end

end
