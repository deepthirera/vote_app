class UserMailer < ActionMailer::Base
  def registration_confirmation(user)  
    mail(:to => "deepthicsetce@gmail.com", :subject => "Registered", :from => "deepthirera@gmail.com")  
  end
end
