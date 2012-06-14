class VotesController < ApplicationController
  def index
    @candidates = Candidate.all
    @vote = Vote.new
  end
  def create
    Vote.create(:voter_id => params[:vote][:id], :comment => params[:vote][:comment], :candidate_id => params[:vote][:voter_id])
  end
  def results
    h = {}
    Candidate.all.each do |candidate|
      h["#{candidate.name}"] = candidate.votes.count
    end
    @votings = h
    @results =  h.max_by{|k,v| v}
    @cheaters = Vote.cheaters
  end
end
