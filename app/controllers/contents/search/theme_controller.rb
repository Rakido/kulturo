class Contents::Search::ThemeController < ApplicationController

  def show
    @themes = Content::THEMES
  end

  def create
    session[:theme] = params[:theme]
    # session[:theme] = 'economics'
    redirect_to contents_path
  end

end
