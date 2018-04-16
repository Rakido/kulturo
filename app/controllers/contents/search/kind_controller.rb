class Contents::Search::KindController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @kinds = Content::KINDS
  end

  def create
    session[:kind] = params[:kind]
    # session[:kind] = 'video'
    redirect_to contents_search_theme_path
  end
end
