0.

CHANNELS_MAPPING = {
  'history'     => ['UC510QYlOlKNyhy_zdQxnGYw'],
  'technology'  => ['']
}


# Controller

0. fetch in CHANNELS_MAPPING the correct channel_id based on user choice

# 
1. channel_id => videos
2. filter, order videos based on your app criteria


class Search
  def self.call(channel_id, search_params)
    channel = Yt::Channel.new id: channel_id
    videos  = channel.videos

    select_matching_videos(videos)
  end

  def self.select_matching_videos(videos)
    
  end
end