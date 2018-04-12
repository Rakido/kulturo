class ContentsController < ApplicationController
  # before_action :validate_previous_steps!
  def index
    # search_params = {
    #   theme:    session[:theme],
    #   duration: session[:duration],
    #   kind:     'video'
    # }

    # On adapte le choix du user (5, 10, 15) en un range de temps
    if session[:duration].to_i == 15
      duration = (14..18)
    elsif session[:duration].to_i == 10
      duration = (8..12)
    elsif session[:duration].to_i == 5
      duration = (4..6)
    end

    # On doit aller cherche LE youtube_channel_id par rapport au thème choisi par le user
    theme              = session[:theme].to_sym
    youtube_channel_id = Content::THEMES_CHANNELS_MAPPING[theme].first

    # faire la correspondance entre le choix du user et le channel ID avec notre hash

    videos = Youtube::Search.new(youtube_channel_id, duration)
    videos.call

    @results = Content.last(3)
    end
end

