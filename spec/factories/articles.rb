FactoryBot.define do #определеяем фабрику
  factory :article do #по умолчанию береёт сущность Article и устанавливает в неё свойства ниже
    title { "Article title" } #Заполняем сущность свойствами, чтобы она стала валидной
    text { "Article text" } #Просим фабрику дать нам валидню сущность
  end
end