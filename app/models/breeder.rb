class Breeder < ActiveRecord::Base

  validates :breeder_name, presence: true
  validates :breeder_id, presence: true
end
