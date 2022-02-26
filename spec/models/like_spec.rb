require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do
    @user = User.new(id: 20, name: 'Faris', bio: 'I am an president of russia', photo: '', posts_counter: 0)
    @post = Post.new(title: 'Benefits of working out', text: 'Its good for your health',
                      comments_counter: 0, likes_counter: 9, user_id: @user.id)
    @like = Like.new(user_id: @user.id, post_id: @user.id)
  end

  describe 'validation tests' do
    it 'validates the author_id exists' do
      expect(@like.user_id).to eq(20)
    end

    it 'validates the post_id exists' do
      expect(@like.post_id).to eq(20)
    end
  end

  describe 'like model methods tests' do
    it 'should increment the post likes_counter' do
      @like.save
      expect(@post.likes_counter).to eq(9)
    end
  end
end
