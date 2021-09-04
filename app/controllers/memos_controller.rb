class MemosController < ApplicationController
  def index
  end

  def show
  end

  def new
    @memo = Memo.new
  end

  def create
    memo = Memo.create!(memo_params)
    redirect_to memo
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :content)
  end
end
