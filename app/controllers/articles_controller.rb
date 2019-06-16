class ArticlesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create] #Применяем только для отмеченныйх экшнов

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id]) #Получаем значения по идентификатору
  end
#СОЗДАТЬ
  def new
  end

  def create
    @article = Article.new(article_params) #сохранение параметров в БД

    if @article.valid? #Проверка валидации
      @article.save
      redirect_to @article #Перенаправить на страницу поста после отправки формы
    else
      render action: 'new' #при ошибке перенаправление на страницу с формой (подсветка ошибок через файл CSS)
    end
  end
#ИЗМЕНИТЬ
  def edit
    @article = Article.find(params[:id]) #Получаем значения по идентификатору
  end

  def update
    @article = Article.find(params[:id]) #Получаем статью
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit' #используется рендер для сохранения значений переменной, редирект так не умеет
    end #рендер не прерывает запрос, а продолжает его дальше, а редирект прерывает и возвращает страницу не сохраняя данные
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to @article
  end

  private #Доступ к параметрам

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
