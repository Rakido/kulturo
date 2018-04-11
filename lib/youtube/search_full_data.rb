module Youtube
  class SearchFullData
    def self.call(youtube_ids)
      # duration  => duration

      ## Affiner la recherche

      ## Duration ##
      # duration = youtube_ids.map do |element| 
      #   video = Yt::Video.new id: element
      #   video.duration
      # end 

      # Yt::Video.new.where duration == 0 && like > 50 
      # duration.select { |num| num < 1800 }

      videos_data = youtube_ids.map.with_index do |id, index|
        video = Yt::Video.new id: id
        puts "#{index + 1}. #{id} - #{video.view_count}, duration: #{video.duration}, likes_count: #{video.like_count}"

        next if too_long(video)
        next unless has_enough_views(video)
        
        # next if ratio_like_dislike_views_count_not_good(video)


        puts "Success, video with id: #{id} selected!"
      end

      binding.pry
      videos_data.compact!
    end

    def self.too_long(video)
      video.duration > 1_800
    end

    def self.has_enough_views(video)
      video.view_count > 50_000
    end

    def self.ratio_like_dislike_views_count_not_good(video)
      (video.dislike_count / (video.like_count + video.dislike_count) * 100) < 10
    end
  end
end