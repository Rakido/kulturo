class ContentsController < ApplicationController
  # before_action :validate_previous_steps!
  def index
    search_params = {
      theme:    session[:theme],
      duration: session[:duration],
      kind:     'video'
    }
    session[:duration] == (15..30) if session[:duration].to_i == 15
    
    videos = Youtube::Search.new('UCIALMKvObZNtJ6AmdCLP7Lg', (5..10))
    videos.call
   
    @results = Content.last(3)
    end
end

