namespace :data do
  desc "send mail"
  task :send_mail => :environment do
    MailSender.call_mailer
  end 
end
