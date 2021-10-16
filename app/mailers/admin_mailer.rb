class AdminMailer < ApplicationMailer

  default from: 'from@example.com'
  layout 'mailer'

  def new_feedback(name,number,message)
    @name = name
    @number = number
    @message = message
    mail(to: 'riyasyacub@gmail.com', subject: 'New Message')
  end

end
