class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments #создаём связку

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
