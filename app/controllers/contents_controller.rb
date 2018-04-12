class ContentsController < ApplicationController
  def index
    search      = Youtube::Search.new(youtube_channel_id, duration_range)
    videos_data = search.call

    @contents   = videos_data.map { |video_data| Content.create!(video_data) }
  end

  def duration_range
    # On adapte le choix du user (5, 10, 15) en un range de temps

    case session[:duration].to_i
    when 15
      (14..18)
    when 10
      (8..12)
    when 5
      (4..6)
    end
  end

  def theme
    session[:theme].to_sym
  end

  def youtube_channel_id
    # Faire le matching entre le choix du user et le channel ID avec notre hash
    Content::THEMES_CHANNELS_MAPPING[theme].first
  end
end

