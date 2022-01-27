class MemosController < ApplicationController
  def index
    @memo = Memo.new
    @memos = Memo.order("created_at DESC")
    @folder = Folder.find(params[:folder_id])
    @folders = Folder.order("created_at ASC")
  end

  def create
    @folder = Folder.find(params[:folder_id])
    @memo = @folder.memos.new(memo_params)
    if @memo.save
      redirect_to folder_memos_path(@folder)
    else
      render :index
    end
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :content)
  end
end
