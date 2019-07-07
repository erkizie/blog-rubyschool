class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments #создаём связку

  def subject
    title
  end
end
