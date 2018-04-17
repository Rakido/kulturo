class ContentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @contents = Content.where(duration: duration_range, kind: session[:kind], theme: theme).sample(3)
  end

  def show
    @content = Content.find(params[:id])
  end

  private

  def duration_range
    # On adapte le choix du user (5, 10, 15) en un range de temps

    case session[:duration].to_i
    when 30
      (26* 60)..(32* 60)
    when 15
      (14 * 60)..(18* 60)
    when 10
      (8 * 60)..(12 *60)
    when 5
      (4* 60)..(6* 60)
    end
  end

  def theme
    session[:theme]
  end

  def youtube_channels_ids
    # binding.pry
    # Faire le matching entre le choix du user et le channel ID avec notre hash
    Content::THEMES_CHANNELS_MAPPING[theme]

  end
end
