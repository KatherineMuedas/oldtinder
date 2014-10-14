class Comment < ActiveRecord::Base
  belongs_to :picture
  belongs_to :users
  validates :body, presence: true
end
