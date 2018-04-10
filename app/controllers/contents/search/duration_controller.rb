class Contents::Search::DurationController < ApplicationController

  def show
    @durations = Content::DURATION
  end

end
