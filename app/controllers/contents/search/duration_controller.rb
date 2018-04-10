class Contents::Search::DurationController < ApplicationController

  def show
    @durations = Content::DURATION
  end

  def create
  end

end
