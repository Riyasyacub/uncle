class AdminMailer < ApplicationMailer

  default from: 'me@2315849dbcaad464e922a7274f53463c-2ac825a1-dc352d19.com'
  

  def new_feedback(name,number,message)
    @name = name
    @number = number
    @message = message
    mail(to: 'test-2vg1oxhu2@srv1.mail-tester.com', subject: 'New Message')
  end

end
