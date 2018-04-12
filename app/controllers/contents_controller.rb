class ContentsController < ApplicationController
  # before_action :validate_previous_steps!
  def index
    search_params = {
      theme:    session[:theme],
      duration: session[:duration],
      kind:     'video'
    }
    if session[:duration].to_i == 15
      session[:duration] == (14..18)
    elsif session[:duration].to_i == 10
      session[:duration] == (8..12)
    elsif session[:duration].to_i == 5
      session[:duration] == (4..6)
    end

    videos = Youtube::Search.new('UCqnbDFdCpuN8CMEg0VuEBqA', (5..10))
    videos.call

    @results = Content.last(3)
    end

  def show

    @content = Content.find(params[:id])

  end
end
