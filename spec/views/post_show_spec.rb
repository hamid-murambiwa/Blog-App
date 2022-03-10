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
      @post = Post.new(
        user: @user,
        title: 'The Verge',
        text: 'The Verge surfaced in 2011 but is still considered one of the best tech blogs 2020 has to offer.',
        likes_counter: 0,
        comments_counter: 0
      )
      @comment1 = Comment.create(text: 'Thank you very much for sharing your experience with us', user: @user, post: @post)
      @comment2 = Comment.create(text: "We're happy you are satisfied with the quality of our", user: @user, post: @post)
      @comment3 = Comment.create(text: 'Thank you very much for sharing your experience with us', user: @user, post: @post)
      @post.update_posts_counter
      @post.save
      visit root_path
      fill_in 'Email', with: '1@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
      visit user_post_path(@user.id, @post)
    end
    it 'Should show the post title' do
      expect(page).to have_content('The Verge')
    end
    it 'Should show who wrote the post' do
      expect(page).to have_content('The Verge by Hamid')
    end
    it 'Should show how many comments the post has' do
      expect(page).to have_content('comments: 3')
    end
    it 'Should show how many likes the post has' do
      expect(page).to have_content('likes: 0')
    end
    it "Should show the post's body" do
      expect(page).to have_content('The Verge surfaced in 2011 but is still considered one of the best tech blogs 2020 has to offer.')
    end
    it 'Should show the username of each commentor' do
      expect(page).to have_content('Hamid:')
    end
    it 'Should show the comment each commentor left' do
      expect(page).to have_content('Thank you very much for sharing your experience with us')
      expect(page).to have_content("We're happy you are satisfied with the quality of our")
      expect(page).to have_content('Thank you very much for sharing your experience with us')
    end
  end
end
