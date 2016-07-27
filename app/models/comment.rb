class Comment < ApplicationRecord
  validates :commentor, :text, presence: true
  belongs_to :article
end
