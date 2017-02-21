# coding: utf-8
class MessagesController < ApplicationController

  before_action :check_logged_in, :only => [:show, :destroy, :index]
  def index
    # Only for admin
    @messages = Message.sorted
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      MessageMailer.inform(@message).deliver_now
      redirect_to :controller => 'main_page', :action => 'home'
    else
      flash[:notice] = 'Извините, произошла ошибка. Заполните форму ещё раз.'
      redirect_to 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    flash[:notice] = "Сообщение '#{@message.theme}' успешно удалено."
    redirect_to(messages_path)
  end

  private

  def message_params
    params.require(:message).permit(:name,
                                    :phone_number,
                                    :email,
                                    :theme,
                                    :text)
  end
end
