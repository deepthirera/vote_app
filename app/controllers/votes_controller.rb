class VotesController < ApplicationController
def index
  @candidates = @voters = Candidate.all
end
end
