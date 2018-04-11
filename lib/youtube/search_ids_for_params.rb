module Youtube
  module Channels
    class SearchVideosIds

    # On reçoit de l'extérieur le channel_id youtube d'où on va choper les vidéos ids

    def self.call(channel_id)
      ## Créer une instance de recherche YT
      videos_query = Yt::Collections::Videos.new
      


      ## Creer un algorythme de recherche
      videos = videos_query.where(
        video_category_id: 28, 
        safe_search: 'moderate', 
        type: 'video', 
        video_definition: 'high',
        relevance_language: 'fr',
        video_duration: 'long',
        published_after: '2015-01-01T00:00:00Z',
        order: 'viewCount'
        # max_results: 20,
      )

      binding.pry
      
      ## Récupérer 3 IDS
      ids = videos.map do |video| 
        video.id
      end
      binding.pry

      puts "finished!"
      # ids.first(3)
    end
  end
end
