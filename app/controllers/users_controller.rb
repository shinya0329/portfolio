class UsersController < ApplicationController
  
  def index
    @users = User.all.page(params[:page]).reverse_order
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).reverse_order
  end
  
  def edit
    @user =User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    blob = @user.profile_image.attachment&.blob
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      # もし、すでにプロフィール画像が存在する場合は、そのプロフィール画像を再利用する
      @user.profile_image.attachment.blob = blob if blob.present?
      render :edit
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
