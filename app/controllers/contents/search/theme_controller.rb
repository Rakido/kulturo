class Contents::Search::ThemeController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @themes = Content::THEMES
  end

  def create
    session[:theme] = params[:theme]
    # session[:theme] = 'economics'
    redirect_to contents_path
  end

end
