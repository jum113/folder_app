class MemosController < ApplicationController
  def index
    @memo = Memo.new
    @memos = Memo.order("created_at DESC")
    @folder = Folder.find(params[:folder_id])
    @folders = Folder.order("created_at ASC")
  end
end
