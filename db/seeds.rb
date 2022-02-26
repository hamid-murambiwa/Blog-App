# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', photo: 'https://i1.sndcdn.com/avatars-000339084123-nag0p1-t500x500.jpg', bio: 'Teacher from Mexico.', posts_counter: 0)
second_user = User.create(name: 'Lilly', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXOdZN9FwqzYqEL6SJa7uQNAFQAmepwBR3bg&usqp=CAU', bio: 'Teacher from Poland.', posts_counter: 0)
third_user = User.create(name: 'Adam', photo:'https://minimaltoolkit.com/images/randomdata/male/38.jpg', bio: 'Software developer from Taiwan', posts_counter: 0)

post1 = Post.create(user:first_user, title:"The Verge", text: 'The Verge surfaced in 2011 but is still considered one of the best tech blogs 2020 has to offer. It’s a multimedia 
experience that delivers text content, videos, product reviews, and news updates for some of today’s leading businesses. Think of it as a convenient place to discover trending holiday

gifts while finding free movie streams and tracking what larger companies in your industry are doing to stay ahead of the high-tech game. There’s a little bit of everything at The Verge,
  and the podcast is an easy way to catch up on the tech trends each week while multitasking.', likes_counter: 0, comments_counter: 0)
post2 = Post.create(user:second_user, title:"CNET News", text: 'If you sometimes recommend products to your audience or are always looking for the best ways to update the technology
 in your business, add CNET to your technology blogs list immediately. The site is an invaluable resource for in-depth reviews of the newest technological products hitting the market,
 
 and they have an attractive news blog that will keep you up to date on the biggest headlines in the technology industry.', likes_counter: 0, comments_counter: 0)
post3 = Post.create(user:first_user, title:"Wired", text: 'How do current technology trends relate to today’s most prominent political scandals? What does the economy have to do with
     technological innovations of the future? Those are just some of the questions that you might answer by following this unique blog dedicated to modern life and the technology industry.
     We rank Wired as one of the best tech blogs for professionals in every industry. Politics, culture, and modern life will always impact your business, and this blog will deliver great
       ideas for presenting the most relevant topics to your audience.', likes_counter: 0, comments_counter: 0)
post4 = Post.create(user:third_user, title:"Venture Beat", text: 'Are you aware of the most groundbreaking technological innovations on the horizon? If not, get connected with Venture
 Beat right away. We feel it is one of the best tech blogs for people who want to hear about the latest scientific studies as well as the daily headlines circulating the technology world.
 The online technology magazine offers a variety of new topics daily, covering the technology that may change your business and personal life tomorrow. Venture Beat covers everything from
   video games and artificial intelligence to marketing, media, and transportation. Following the channels that are relevant to your professional and personal life allows you to save time while missing nothing.', likes_counter: 0, comments_counter: 0)

comment1 = Comment.create(text:'Thank you very much for sharing your experience with us.', user: first_user, post:post1, post_id:1, user_id:1)
comment2 = Comment.create(text:"We're happy you are satisfied with the quality of our", user: second_user, post:post2, post_id:2, user_id:2)
comment3 = Comment.create(text:'Thank you very much for sharing your experience with us', user: third_user, post:post3, post_id:3, user_id:3)
comment4 = Comment.create(text:'We are really happy that your interaction with our brand was so positive', user: first_user, post:post3, post_id:3, user_id:1)
comment5 = Comment.create(text:'I just want to let you know that we are acting upon your feedback to make some vital changes to the way we operate [list of changes].', user: second_user, post:post1, post_id:1, user_id:2)
comment6 = Comment.create(text:'As you can see, the opinions of our clients help us to provide better experiences and grow as a company.', user: third_user, post:post2, post_id:2, user_id:3)

INSERT INTO users VALUES ("name", "Tom", "photo", "https://i1.sndcdn.com/avatars-000339084123-nag0p1-t500x500.jpg", "bio", "Teacher from Mexico.", 0, "created_at", "2022-02-26 07:23:08.951646", "updated_at", "2022-02-26 07:23:08.951646");