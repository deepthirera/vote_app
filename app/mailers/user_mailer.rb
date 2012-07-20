class UserMailer < ActionMailer::Base
  def pending_mail  
    mail(:to => Candidate.find(Candidate.all.map(&:id)-Vote.all.map(&:voter_id)).map(&:mail_id), :subject => "Voting pending..", :from => "deepthirera@gmail.com").deliver
  end
  def daily_mail  
    mail(:to => Candidate.all.map(&:mail_id), :subject => "Voting", :from => "deepthirera@gmail.com")
  end
  def deepthi
    mail(:to => "deepthicsetce@gmail.com", :subject => "Voting", :from => "deepthirera@gmail.com").deliver 
  end
end
