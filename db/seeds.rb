puts 'Cleaning database...'
Content.destroy_all

youtube_contents_attributes = JSON.parse(File.open('db/fixtures/youtube.json').read)
youtube_contents_attributes.each { |content_attributes| Content.create(content_attributes) }

