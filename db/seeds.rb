puts 'Cleaning database...'
Content.destroy_all

youtube_contents_attributes = JSON.parse(File.open('db/fixtures/youtube.json').read)
youtube_contents_attributes.each { |content_attributes| Content.create(content_attributes) }

medium_content_attributes = {

 kind: "article",
 duration: "420",
 title: "Ask Ethan: How Fast Could Life Have Arisen In The Universe?",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/starts-with-a-bang/ask-ethan-how-fast-could-life-have-arisen-in-the-universe-863bd17b92ca",
 image_url: "https://cdn-images-1.medium.com/max/800/1*1aApLgMB0yN74OTEJY3aTg.png",
 publication_date: Date.parse('14-05-2018'),
 description: "It took the Universe 9.2 billion years to create the Earth, and another 4 billion for complex life. Could we have gotten there faster?",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)


medium_content_attributes = {

 kind: "article",
 duration: "480",
 title: "Learning From the Feynman Technique",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/taking-note/learning-from-the-feynman-technique-5373014ad230",
 image_url: "https://cdn-images-1.medium.com/max/800/1*N-_IzheAhp4XT_6z6V8gcw.png",
 publication_date: Date.parse('05-08-2017'),
 description: "Richard Feynman (1918–1988), an author, graphic novel hero, intellectual, philosopher, physicist, and No Ordinary Genius is considered to be one of the most important physicists of all time.",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "600",
 title: "If you’re not spending 5 hours per week learning, you’re being irresponsible",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/the-mission/the-5-hour-rule-if-youre-not-spending-5-hours-per-week-learning-you-re-being-irresponsible-791c3f18f5e6",
 image_url: "https://cdn-images-1.medium.com/max/800/1*EYDEbGUDk1FqG9p1JO9_BQ.jpeg",
 publication_date: Date.parse('12-10-2017'),
 description: "“In my whole life, I have known no wise people (over a broad subject matter area) who didn’t read all the time — none. Zero.”",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "660",
 title: "The Biology of Superheroes",
 theme: "sciences",
 source: "medium",
 url: "https://nexusmedianews.com/the-science-of-superheroes-8200ab9c6458",
 image_url: "https://cdn-images-1.medium.com/max/2000/1*YQ1Um5b_E-KNBhOlNGpOLA.jpeg",
 publication_date: Date.parse('10-04-2018'),
 description: "Evolutionary biologist Shane Campbell-Staton loves reading comic books almost as much as he loves studying unusual animals. Now he’s combining his twin passions in a new podcast, The Biology of Superheroes, co-hosted by fellow geek Arien Darby",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "480",
 title: "8 Common Arguments Against Vaccines",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/the-method/8-common-arguments-against-vaccines-5d45ad9c1e29",
 image_url: "https://cdn-images-1.medium.com/max/2000/1*rO16Pz6DxyDNCRjLbF0bOA.jpeg",
 publication_date: Date.parse('09-09-2017'),
 description: "And why they don’t make any sense at all",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "660",
 title: "Meet 12 Badass Scientists…Who Also Happen to be Women",
 theme: "sciences",
 source: "medium",
 url: "https://fellowsblog.ted.com/meet-12-badass-scientists-who-also-happen-to-be-women-ace8d797bcad",
 image_url: "https://cdn-images-1.medium.com/max/2000/1*onL9MVQaJ4_JIwInZfomRA.jpeg",
 publication_date: Date.parse('08-10-2015'),
 description: "What do you see when you picture a scientist? Is it a white man in a lab coat? This portrait will smash that stereotype to bits.",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "300",
 title: "Why There Are No Great Whites In Aquariums?",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/omgfacts/ever-wonder-why-there-are-no-great-whites-in-aquariums-87c65bd0d8b2",
 image_url: "https://cdn-images-1.medium.com/max/2000/0*Un0EymttQ5H2DQ60.jpeg",
 publication_date: Date.parse('29-07-2016'),
 description: "It’s not just because of their predator status.",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "1800",
 title: "What I Learned about Climate Change",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/@pullnews/what-i-learned-about-climate-change-the-science-is-not-settled-1e3ae4712ace",
 image_url: "https://cdn-images-1.medium.com/max/2000/1*S-Mj0yYTPb19JW93rTha7g.jpeg",
 publication_date: Date.parse('16-10-2015'),
 description: "What is your position on the climate-change debate? What would it take to change your mind?",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "420",
 title: "Are We Really Alone?",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/s/the-possibility-of-life/are-we-really-alone-9f3470d141de",
 image_url: "https://cdn-images-1.medium.com/max/1400/1*qLaXNZ49vdI6uGJydCotMQ.jpeg",
 publication_date: Date.parse('20-03-2018'),
 description: "With all the ways scientists look at space, what are the odds of finding life?",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)

medium_content_attributes = {

 kind: "article",
 duration: "1080",
 title: "The impossibility of intelligence explosion",
 theme: "sciences",
 source: "medium",
 url: "https://medium.com/@francois.chollet/the-impossibility-of-intelligence-explosion-5be4a9eda6ec",
 image_url: "https://cdn-images-1.medium.com/max/800/1*o9GuZIo-PfyXqa46qL_yIQ.png",
 publication_date: Date.parse('27-11-2017'),
 description: "In 1965, I. J. Good described for the first time the notion of “intelligence explosion”, as it relates to artificial intelligence (AI).",
 source_theme: "sciences",
}

Content.create(medium_content_attributes)


