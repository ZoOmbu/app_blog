class Article < ApplicationRecord
  validates :title, :text, presence: true
  validates :title, uniqueness: true
  belongs_to :user
  has_many :comments
end
