# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
VoteApp::Application.initialize!
ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => "deepthirera",  
  :password             => "7elec6tric9",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  
