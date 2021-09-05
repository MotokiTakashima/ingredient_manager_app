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
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to @memo, notice: "追加しました"
    else
      flash.now[:alert] = "追加に失敗しました"
      redirect_to memos_path
    end
  end

  def edit
  end

  def update
    if @memo.update(memo_params)
      redirect_to memos_path, notice: "変更しました"
    else
      flash.now[:alert] = "変更に失敗しました"
      render :edit
    end
  end

  def destroy
    @memo.destroy!
    redirect_to memos_path, alert: "削除しました"
  end

  private

  def set_memo
    @memo = Memo.find(params[:id])
  end

  def memo_params
    params.require(:memo).permit(:title, :content)
  end
end
