class PostsController < ApplicationController

  before_action :set_post, only: %i[edit update destroy]
  before_action :move_to_signed_in, except: [:top]

  def index
    @genres = Genre.all
    @posts = params[:name].present? ? Genre.find(params[:name]).posts : Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "#{@post.product}を追加しました"
    else
      flash.now[:alert] = "追加に失敗しました"
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "#{@post.product}を更新しました"
    else
      flash.now[:alert] = "更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, alert: "#{@post.product}を削除しました"
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:product, :memo, :start_time, genre_ids: [])
  end

  def move_to_signed_in
    unless user_signed_in?
      #サインインしていないユーザーはログインページが表示される
      redirect_to "/users/sign_in"
    end
  end
end
