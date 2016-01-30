class Series < ActiveRecord::Base
  attr_accessible :name, :realm_id, :app_id
  has_many :books
  has_many :modelstocks
  belongs_to :realm

  validates_presence_of :name, :realm_id
  validates_length_of :name, in: 1..255
end
