class Series < ActiveRecord::Base
  attr_accessible :name, :app_id
  has_many :books
  has_many :modelstocks

  validates_presence_of :name, :app_id
  validates_length_of :name, in: 1..255
end
