class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :moviegoer
  validates_presence_of :moviegoer_id
  validates :movie_id, :presence => true
  validates_associated :movie
  validates_inclusion_of :potatoes, :in => [0,1,2,3,4,5]
end

