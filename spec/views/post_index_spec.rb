require 'rails_helper'
RSpec.describe 'Login', type: :feature do
  describe 'User' do
    before(:each) do
      @user = User.create(
        name: 'Hamid',
        password: '111111',
        bio: 'First time user',
        email: '1@gmail.com',
        confirmed_at: Time.now,
        posts_counter: 0
      )
      @post1 = Post.new(user: @user, title: 'The Verge', text: 'It surfaced', likes_counter: 0, comments_counter: 0)
      @post2 = Post.new(user: @user, title: 'CNET News', text: 'CNET technology', likes_counter: 0, comments_counter: 0)
      @post3 = Post.new(user: @user, title: 'Wired', text: 'Current technology', likes_counter: 0, comments_counter: 0)
      @comment1 = Comment.create(text: 'Thank you very much', user: @user, post: @post1)
      @comment2 = Comment.create(text: "We're happy you are satisfied", user: @user, post: @post2)
      @comment3 = Comment.create(text: 'Thank you very much', user: @user, post: @post3)
      @post1.update_posts_counter.save
      @post2.update_posts_counter.save
      @post3.update_posts_counter.save
      visit root_path
      fill_in 'Email', with: '1@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
      visit user_posts_path(@user)
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
    it "Should show a user's post title" do
      expect(page).to have_content('The Verge')
    end
    it 'Should show some of the posts body' do
      expect(page).to have_content('It surfaced')
    end
    it 'Should show the first comment on a post' do
      expect(page).to have_content('Thank you very much')
    end
    it 'Should show how many comments a post has' do
      expect(page).to have_content('comments: 1')
    end
    it 'Should show how many likes a post has' do
      expect(page).to have_content('comments: 1')
    end
    it "When a user clicks on the post the app should redirect you to that post's show page" do
      click_on 'The Verge'
      expect(page).to have_current_path user_post_path(@user.id, @post1)
    end
  end
end
