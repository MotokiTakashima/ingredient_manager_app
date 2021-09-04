class MemosController < ApplicationController
  def index
    @memos = Memo.order(id: :asc)
    @memo = Memo.new
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to memos_path
  end

  def edit
  end

  def update
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy!
    redirect_to memos_path
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :content)
  end
end
