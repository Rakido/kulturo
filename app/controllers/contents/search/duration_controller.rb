class Contents::Search::DurationController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @durations = Content::DURATIONS
  end

  def create
    session[:duration] = params[:duration]
    redirect_to contents_search_kind_path
  end
end
