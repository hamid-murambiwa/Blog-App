class User < ApplicationRecord
  has_many :posts, foreign_key: :user_id
  has_many :commeents, foreign_key: :user_id
  has_many :likes, foreign_key: :user_id

  def recent_posts
    Post.last(3)
  end

  validates :name, presence: true
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }
end
