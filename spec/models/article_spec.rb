require 'rails_helper'

describe Article do

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe 'associations' do
    it { should have_many :comments }
  end

  describe '#subject' do
    it 'returns the article title' do
      #создаём объект вручную
      article = create(:article, title: "Hey")
      #тестируем его
      expect(article.subject).to eq "Hey"
    end
  end

  describe '#last_comment' do
    it 'returns last comment' do
      #создаём статью с комментариями
      article = create(:article_with_comments)
      #проверка
      expect(article.last_comment.body).to eq 'comment body 3'
    end
  end

end