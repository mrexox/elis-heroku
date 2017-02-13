class MessageMailer < ApplicationMailer
  default to: 'anilexes@gmail.com'

  def inform(message)
    @name = message.name
    @phone_number = message.phone_number
    @email = message.email
    @theme = message.theme
    @text = message.text
    mail(subject: 'ElisType: new message from site.', from: @email)
  end
end
