class Article < ActiveRecord::Base
  belongs_to :user
  has_many :articlescategories
  has_many :categories, through: :articlescategories
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10}
  validates :user_id, presence: true
end