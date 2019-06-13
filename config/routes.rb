Rails.application.routes.draw do

  devise_for :users
  root to: "articles#index"

  get 'terms' => 'pages#terms' #Метод будет отображаться по основной ссылке
  get 'about' => 'pages#about' #Метод будет отображаться по основной ссылке

  resources :articles do
    resources :comments
  end

  resource :contacts, only: [:new, :create], path_names: {:new => ''} #Отображение функции new на основной странице
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
