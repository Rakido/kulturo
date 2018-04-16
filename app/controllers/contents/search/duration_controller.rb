class Contents::Search::DurationController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @durations = Content::DURATIONS
  end

  def create
    session[:duration] = params[:duration]
    # session[:duration] = 15
    redirect_to contents_search_kind_path
  end


  private

  def duration_params
  end

end
