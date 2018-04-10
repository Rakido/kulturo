class Contents::Search::DurationController < ApplicationController

  def show
    @durations = Content::DURATIONS
  end

  def create
    # @duration = params[:duration]
    session[:duration] = params[:duration]
    redirect_to contents_search_kind_path
  end


  private

  def duration_params
  end

end
