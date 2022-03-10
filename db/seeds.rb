# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# first_user = User.create(
#     name: 'Tom',
#     photo: 'https://png.pngtree.com/png-vector/20210426/ourlarge/pngtree-young-man-cartoon-profile-vector-hd-image-png-image_3238138.jpg',
#     bio: "Dr. Jonas Frederikson is an orthopedic surgeon who believes that patient care should be a physician's first priority. He special
#           izes in laparoscopic procedures that minimize pain and recovery time, and has expertise in minimally invasive total knee replacement
#           surgeries. Awarded the Distinguished Service Award from the American Medical Association in 2017, Dr. Frederikson has been published
#           in both the Journal of the American Podiatric Medical Association and the New England Journal of Medicine. He holds a medical degree
#           from the Medical University of South Carolina, where he completed a postdoctoral fellowship in the field of orthopedic medicine.",
#     posts_counter: 0
#     )

# second_user = User.create(
#     name: 'Lilly',
#     photo: 'https://www.pngitem.com/pimgs/m/125-1257012_keysha-rolon-profile-photo-cartoon-hd-png-download.png',
#     bio: 'Karmen Barić connects online brands to their target audiences for the perfect marketing experience. At
#           the University of California, Davis, Karmen learned the importance of applying classic marketing techniques
#           to modern brand strategies from experts in the field, including her Communications professor, Dr. Martin Mitchell.
#           Recently she finished a research paper on customer conversion and participated in a group project on improving SEO.
#           Karmen is currently finishing her Bachelor of Arts in Communications and hopes to intern in an online marketing department
#           in the near future.',
#     posts_counter: 0
#   )

# third_user = User.create(
#     name: 'Adam',
#     photo:'https://wallpapercave.com/wp/wp9280855.jpg',
#     bio: "Manuel Iglesias draws from his life story when writing about the experiences of migrant workers. His first series of poems,
#           My Father's Hands, appeared in The New Yorker and describes how his family crossed the Texas border to give Manuel and his brothers
#           a better life. After receiving his Master's in Fine Arts from Columbia University, Manuel wrote three nonfiction novels about his experiences,
#           including Under the Streaming Sun, which earned the National Prize for Arts and Sciences in 2008. Manuel is currently working on a collection
#           of fictional short stories to be published in early 2021.",
#     posts_counter: 0
#     )

# post1 = Post.create(
#     user:first_user,
#     title:"The Verge",
#     text: 'The Verge surfaced in 2011 but is still considered one of the best tech blogs 2020 has to offer. It’s a multimedia 
#           experience that delivers text content, videos, product reviews, and news updates for some of today’s leading businesses. Think of it as a
#           convenient place to discover trending holiday gifts while finding free movie streams and tracking what larger companies in your industry are
#           doing to stay ahead of the high-tech game. There’s a little bit of everything at The Verge, and the podcast is an easy way to catch up on the
#           tech trends each week while multitasking.',
#     likes_counter: 0,
#     comments_counter: 0
#     )

# post2 = Post.create(
#     user:second_user,
#     title:"CNET News",
#     text: 'If you sometimes recommend products to your audience or are always looking for the best ways to update the technology in your business, add CNET
#           to your technology blogs list immediately. The site is an invaluable resource for in-depth reviews of the newest technological products hitting the market,
#           and they have an attractive news blog that will keep you up to date on the biggest headlines in the technology industry.',
#     likes_counter: 0,
#     comments_counter: 0
#     )

# post3 = Post.create(
#     user:first_user,
#     title:"Wired",
#     text: 'How do current technology trends relate to today’s most prominent political scandals? What does the economy have to do with technological innovations
#           of the future? Those are just some of the questions that you might answer by following this unique blog dedicated to modern life and the technology industry.
#           We rank Wired as one of the best tech blogs for professionals in every industry. Politics, culture, and modern life will always impact your business, and this
#           blog will deliver great ideas for presenting the most relevant topics to your audience.',
#     likes_counter: 0,
#     comments_counter: 0
#     )

# post4 = Post.create(
#     user:third_user, title:"Venture Beat",
#     text: 'Are you aware of the most groundbreaking technological innovations on the horizon? If not, get connected with Venture
#           Beat right away. We feel it is one of the best tech blogs for people who want to hear about the latest scientific studies as well as the daily headlines
#           circulating the technology world. The online technology magazine offers a variety of new topics daily, covering the technology that may change your business
#           and personal life tomorrow. Venture Beat covers everything from video games and artificial intelligence to marketing, media, and transportation. Following the
#           channels that are relevant to your professional and personal life allows you to save time while missing nothing.',
#     likes_counter: 0,
#     comments_counter: 0
#     )

# comment1 = Comment.create(text:'Thank you very much for sharing your experience with us.', user: first_user, post:post1, post_id:1, user_id:1)
# comment2 = Comment.create(text:"We're happy you are satisfied with the quality of our", user: second_user, post:post2, post_id:2, user_id:2)
# comment3 = Comment.create(text:'Thank you very much for sharing your experience with us', user: third_user, post:post3, post_id:3, user_id:3)
# comment4 = Comment.create(text:'We are really happy that your interaction with our brand was so positive', user: first_user, post:post3, post_id:3, user_id:1)
# comment5 = Comment.create(text:'I just want to let you know that we are acting upon your feedback to make some vital changes to the way we operate [list of changes].', user: second_user, post:post1, post_id:1, user_id:2)
# comment6 = Comment.create(text:'As you can see, the opinions of our clients help us to provide better experiences and grow as a company.', user: third_user, post:post2, post_id:2, user_id:3)
