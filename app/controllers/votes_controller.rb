class VotesController < ApplicationController
  def index
    @candidates = Candidate.all
    @vote = Vote.new
  end
  def create
    Vote.create(:voter_id => params[:vote][:id], :comment => params[:vote][:comment], :candidate_id => params[:vote][:voter_id])
  end
  def results
    @votings = {}
    Candidate.all.each do |candidate|
      @votings["#{candidate.name}"] = candidate.votes.count
    end
    @cheaters = Vote.cheaters
    @results =  @votings.max_by{|k,v| v}
    @winners = @votings.each_pair.select{|k,v| v==@results[1]} if @results[1]!=0
  end
  def mail_send  
    UserMailer.daily_mail.deliver 
    render :text => "done"
  end
  def pending_mail_send
    UserMailer.pending_mail.deliver 
    render :text => "done"
  end
end
