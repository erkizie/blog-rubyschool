FactoryBot.define do #определеяем фабрику
  factory :article do #по умолчанию береёт сущность Article и устанавливает в неё свойства ниже
    title { "Article title" } #Заполняем сущность свойствами, чтобы она стала валидной
    text { "Article text" } #Просим фабрику дать нам валидню сущность
    #Создаём фабрику article_with_comments для создаия статьи с несколькими комментариями
    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|
        #создаём список из 3 комментов
        create_list :comment, 3, article: article
      end
    end
  end
end