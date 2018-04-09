puts 'Cleaning database...'
Content.destroy_all

puts 'Creating static content'

# valider duration
# valider date
# description video / podcast

video = Content.create!(
  kind: "video",
  duration: 3,
  title: "TEDxSpotlights Reimagining Leadership",
  theme: "Organisations à but non lucratif",
  source: "youtube",
  image_url: "https://i.ytimg.com/vi/M0MvdurXvpU/hqdefault.jpg",
  url: "https://www.youtube.com/watch?v=M0MvdurXvpU",
  publication_date: '2017-04-24',
  description: "TEDxSpotlights Reimagining Leadership was produced with thanks to the Bill & Melinda Gates Foundation. And a very special thanks to:",
  )

article = Content.create!(
  kind: "article",
  duration: 8,
  title: "Why We Like to Have Our Backs Scratched",
  theme: "science",
  source: "medium",
  image_url: "https://cdn-images-1.medium.com/max/1000/1*zn83w1GyP7XeOPvnxH2nKg.jpeg",
  url: "https://medium.com/@tmitchellbrown/why-we-like-to-have-our-backs-scratched-e29e79e2253c",
  publication_date: "2017-09-16",
  description: "Your skin is essentially a body envelope. It keeps your vital fluids in and protects your heart, lungs, and other viscera from bacteria and dehydration.
  It’s also the primary medium through which we bond with other people.",
  )

podcast = Content.create!(
  kind: "podcast",
  duration: 7,
  title: "Episode 5 : Faut-il absolument évoluer professionnellement ?",
  theme: "Podcast français",
  source: "soundcloud",
  image_url: "https://i1.sndcdn.com/artworks-000302514276-za4pjn-t500x500.jpg",
  url: "https://soundcloud.com/slalompro/episode-5-faut-il-absolument-evoluer-professionnellement-podcast-francais",
  publication_date: "2018-02-15",
  description: "L'évolution professionnelle... l'étape convoitée par beaucoup de monde... mais faut-il absolument vouloir évoluer ?
  Quelles sont les motivations les plus courantes liées à une évolution professionnelle ?
  Est-ce qu'il n'y a que l'argent qui compte dans tout ça ?
  Dans quel cas l'évolution est carrément un danger pour vous ? pour les autres ?
  Les réponses à ces questions dans l’épisode 5 !
  Merci de vous abonner aux Podcasts. Vous pouvez nous suivre via l’app podcast de itunes, ou sur Soundcloud, ou encore revenir sur le site internet. Vous pouvez nous suivre sur Facebook et Instagram."
  )
