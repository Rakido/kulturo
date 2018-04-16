module Youtube
  class Search
    def initialize(channel_id)
      @channel_id = channel_id
    end

    def call
      channel = Yt::Channel.new id: @channel_id

      ordered_videos_by_view_count = channel.videos.where(
        order: 'viewCount',
        video_definition: 'high',
        video_embeddable: true,
      )

      selected_videos = select_matching_videos(ordered_videos_by_view_count)
      selected_videos.map do |video|
        {
          kind:             'video',
          duration:         video.duration,
          title:            video.title,
          source:           'youtube',
          source_theme:     video.video_category.title,
          url:              "https://www.youtube.com/watch?v=#{video.id}",
          image_url:        video.thumbnail_url,
          publication_date: video.published_at,
          description:      video.description,
        }
      end
    end

    private

    def select_matching_videos(videos)
      full_data_videos = []

      videos.each do |video|
        full_data_video = Yt::Video.new(id: video.id)

        if valid_video?(full_data_video)
          full_data_videos << full_data_video
        end
      end

      return full_data_videos
    end

    def valid_video?(video)
      has_enough_views(video) && good_ratio_likes_dislikes(video)
    end

    def has_enough_views(video)
      video.view_count > 50_000
    end

    def good_ratio_likes_dislikes(video)
      total_reactions_count = video.like_count + video.dislike_count
      ratio_dislike_to_total_reactions = (video.dislike_count / total_reactions_count.to_f) * 100

      ratio_dislike_to_total_reactions < 10
    end
  end
end

