class Series < ActiveRecord::Base
  attr_accessible :name, :realm_id
  belongs_to :realm

  validates_uniqueness_of :name
  validates_presence_of :name, :realm_id
  validates_length_of :name, in: 1..255
end
