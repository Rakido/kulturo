class BookmarksController < ApplicationController
  def create

    @content = Content.find(params[:content_id])
    @bookmark = Bookmark.new(content: @content, user: current_user)

    @bookmark.save
    # notification pour contenu sauvegarder
    # flash[:notice] = "Post successfully created"
    redirect_to profile_path
  end
end

