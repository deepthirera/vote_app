class UserMailer < ActionMailer::Base
  def daily_mail  
      mail(:to => Candidate.find(Candidate.all.map(&:id)-Vote.all.map(&:voter_id)).map(&:mail_id), :subject => "Voting", :from => "deepthirera@gmail.com")  
  end
  def pending_mail  
      mail(:to => Candidate.find(Candidate.all.map(&:id)), :subject => "Voting pending", :from => "deepthirera@gmail.com")  
  end
end
