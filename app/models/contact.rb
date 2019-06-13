class Contact < ApplicationRecord
  validates :email, presence: true #Валидация полей
  validates :message, presence: true
end
