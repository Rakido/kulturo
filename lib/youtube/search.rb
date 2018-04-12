module Youtube
  class Search
    def initialize(channel_id, duration_range)
      @channel_id     = channel_id
      @duration_range = duration_range
    end

    def call
      channel = Yt::Channel.new id: @channel_id

      videos  = channel.videos.where(
        order: 'viewCount',
        video_definition: 'high',
        max_results: 30,
        video_embeddable: true,
      )

      select_matching_videos(videos).each do |video_id|
        video = Yt::Video.new id: video_id
        Content.create(
          kind: 'video',
          duration: video.length,
          title: video.title,
          theme: video.video_category,
          source: 'youtube',
          url: "https://www.youtube.com/watch?v=#{video.id}",
          image_url: video.thumbnail_url,
          publication_date: video.published_at,
          description: video.description,
          )
      end
    end
    private

    def too_long(video)
      @duration_range.include?(video.duration / 60)
    end

    def has_enough_views(video)
      video.view_count > 50_000
    end

    def ratio_like_dislike_views_count_not_good(video)
      (video.dislike_count / (video.like_count + video.dislike_count).to_f * 100) < 5
    end

    def select_matching_videos(videos)
      # TODO: transfer code from search_full_data.rb, using @duration_range
      ids = videos.map do |video| 
        video.id
      end
      sorted_videos = ids.map.with_index do |id, index|
        next if index > 30
        video = Yt::Video.new id: id
        puts "#{index + 1}. #{id} - #{video.view_count}, duration: #{video.duration}, likes_count: #{video.like_count}"

        next unless too_long(video)
        next unless has_enough_views(video)
        next unless ratio_like_dislike_views_count_not_good(video)

        puts "Success, video with id: #{id} selected!"
        id
      end
      sorted_videos.compact!
      sorted_videos
    end
  end
end

# How to use it in controller
# videos = Youtube::Search.new('YFUZHFIHZF', 0..5)

# contents_attributes = extract_content_attributes(videos)
# contents_attributes.each do |content_attributes|
#   Content.create(content_attributes)
# end