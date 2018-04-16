class BookmarksController < ApplicationController
  def create
    binding.pry
    @content = Content.find(params[:content_id])
    @bookmark = Bookmark.new(content: @content, user: current_user)

    @bookmark.save
    redirect_to content_path(@content)
  end
end

