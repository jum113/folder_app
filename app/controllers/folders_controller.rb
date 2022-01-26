class FoldersController < ApplicationController
  def index
    @folder = Folder.new
  end
end
