class PostsController < ApplicationController

  before_action :set_post, only: %i[edit update destroy]

  def index
    @posts = Post.order(id: :asc)
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
    params.require(:post).permit(:product, :memo, :start_time)
  end
end
