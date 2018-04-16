class CreateContentService

  def initialize(theme)
    @theme        = theme
    @channels_ids = Content::THEMES_CHANNELS_MAPPING[@theme]
  end

  # coeur du service (se charge lancer la "machine")
  def call

  # service jobs:
  # 1 - Demander à youtube search de trouver du contenu pour certains chanel_id
    contents_attributes = @channels_ids.map do |channel_id|
      Youtube::Search.new(channel_id).call
    end
    # contents_attributes # => [[<channel_id1> => {video1}, {video2}], [<channel_id2> => {}, {}]]

    contents_attributes.flatten!
    # contents_attributes # => [{channel_id1_video1}, {channel_id1_video2}, {channel_id2_video1}, {channel_id2_video2}, ...]

  # 2 - creation contenu non existant dans la DB (via youtube url)
    contents_attributes.each do |content_attributes|
      content_attributes[:theme] = @theme
      Content.create_with(content_attributes).find_or_create_by(url: content_attributes[:url])
    end
  end
end
