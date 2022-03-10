require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  describe 'User' do
    before(:each) do
        @user = User.create(name: 'Hamid', password: '111111', bio: 'First time user', email: '1@gmail.com',
        confirmed_at: Time.now, posts_counter: 0)
        @post1 = Post.new(
            user:@user,
            title:"The Verge",
            text: 'The Verge surfaced in 2011 but is still considered one of the best tech blogs 2020 has to offer.',
            likes_counter: 0,
            comments_counter: 0
        )
        @post2 = Post.new(
            user:@user,
            title:"CNET News",
            text: 'add CNET to your technology blogs list immediately',
            likes_counter: 0,
            comments_counter: 0
        )
        @post3 = Post.new(
            user:@user,
            title:"Wired",
            text: 'How do current technology trends relate to today’s most prominent political scandals',
            likes_counter: 0,
            comments_counter: 0
        )
        @post1.update_posts_counter
        @post2.update_posts_counter
        @post3.update_posts_counter
        @post1.save
        @post2.save
        @post3.save
        visit root_path
        fill_in 'Email', with: '1@gmail.com'
        fill_in 'Password', with: '111111'
        click_button 'Log in'
        visit user_path(@user.id)
    end

    it 'Should show the profile picture of user' do
        image = page.all('img')
        expect(image.size).to eql(1)
    end

    it 'Should show the usernames the user' do
        expect(page).to have_content('Hamid')
    end

    it 'Should show the number of posts the user has written' do
        expect(page).to have_content('Number of posts: 3')
    end

    it "Should show the user's bio" do
        expect(page).to have_content('First time user')
    end

    it "Should show the user's first 3 posts." do
        expect(page).to have_content('The Verge')
        expect(page).to have_content('CNET News')
        expect(page).to have_content('Wired')
    end

    it 'Should show a button that lets me view all of a users posts' do
        expect(page).to have_content('See all post')
    end

    it "When a user clicks on the 'see all posts' button the app should redirect you to that post's show page" do
        click_on 'See all posts'
        expect(page).to have_current_path user_posts_path(@user)
    end
  end
end