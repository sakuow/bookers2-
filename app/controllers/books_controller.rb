class BooksController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
