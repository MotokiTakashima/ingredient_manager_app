class MemosController < ApplicationController

  before_action :set_memo, only: %i[edit update destroy]

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
    @memo.update!(memo_params)
    redirect_to memos_path
  end

  def destroy
    @memo.destroy!
    redirect_to memos_path
  end

  private

  def set_memo
    @memo = Memo.find(params[:id])
  end

  def memo_params
    params.require(:memo).permit(:title, :content)
  end
end
