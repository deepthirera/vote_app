class Vote < ActiveRecord::Base
  belongs_to :candidate
  def self.cheaters
    cheaters = Candidate.all.collect(&:id)-Vote.all.collect(&:voter_id).uniq
    cheaters.collect{|x| Candidate.find(x).name}
  end
end
