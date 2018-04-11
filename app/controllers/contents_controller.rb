class ContentsController < ApplicationController
  # before_action :validate_previous_steps!
  def index
    search_params = {
      theme:    session[:theme],
      duration: session[:duration],
      kind:     'video'
    }

    videos = Youtube::Search.new('UCIALMKvObZNtJ6AmdCLP7Lg', 0..5)
    videos.call
   
    @results = Content.last(3)
    end
end

