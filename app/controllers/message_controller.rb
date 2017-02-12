class MessageController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      MessageMailer.inform(@message).deliver_now
      redirect_to :action =>'contacts'
    els
      redirect_to :action => 'contacts'
    end
  end

  def index
    # Only for admin
    @messages = Message.sorted
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
