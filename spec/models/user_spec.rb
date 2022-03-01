require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Hamid', bio: 'I am a web software Engineer', photo: '', posts_counter: 0)
    4.times do
      Post.new(title: 'Computer specs', text: 'All computer specs', comments_counter: 0, likes_counter: 0,
               user_id: @user.id)
    end

    @posts = Post.where(user_id: @user.id).all
  end

  describe 'user validation tests' do
    it 'validates the if the name is nil' do
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it 'validates the presence of the posts_counter' do
      @user.posts_counter = nil
      expect(@user).to_not be_valid
    end

    it 'validates the numericality of the posts_counter' do
      @user.posts_counter = 'one'
      expect(@user).to_not be_valid
    end

    it 'validates the posts_counter is greater_than_zero' do
      @user.posts_counter = 2
      expect(@user.posts_counter).to be > 0
    end

    it 'validates the posts_counter is greater_equal_to_zero' do
      @user.posts_counter = 0
      expect(@user.posts_counter).to eq(0)
    end
  end

  describe 'user model methods tests' do
    before do
      @user = User.create(name: 'Hamid', bio: 'I am a web software Engineer', photo: '', posts_counter: 0)
      4.times do
        Post.create(
          title: 'Computer specs',
          text: 'All computer specs',
          comments_counter: 0,
          likes_counter: 0,
          user_id: @user.id
        )
      end
    end

    it 'returns the most recent posts and limit to 3 posts' do
      expect(@user.recent_posts).to eq(@user.posts.last(3))
    end
  end
end
