class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params) #сохранение параметров в БД

    if @contact.valid? #Проверка валидации
      @contact.save
    else
      render action: 'new' #при ошибке перенаправление на страницу с формой (подсветка ошибок через файл CSS)
    end

  end

  private #Доступ к параметрам

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
