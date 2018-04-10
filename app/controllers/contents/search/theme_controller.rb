class Contents::Search::ThemeController < ApplicationController

  def show
    @themes = Content::THEMES
  end

  def create
    session[:theme] = params[:theme] 
    redirect_to contents_path
  end

end
