class Artist < ActiveRecord::Base
  # add associations here
  has_many :songs
  
  accepts_nested_attributes_for :songs
end
