class FoldersController < ApplicationController
  def index
    @folders = Folder.order("created_at ASC")
    @folder = Folder.new
  end

  def create
    @folder =Folder.new(folder_params)
    if @folder.save
      redirect_to root_path
    end
  end

  def destroy
    folder = Folder.find(params[:id])
    folder.destroy
    redirect_to root_path
  end

  private

  def folder_params
    params.require(:folder).permit(:folder_name)
  end
end
