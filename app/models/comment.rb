class Comment < ApplicationRecord
  validates :body, length: { maximum: 1000}
  belongs_to :article
end
