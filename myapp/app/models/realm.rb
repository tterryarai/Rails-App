class Realm < ActiveRecord::Base
  attr_accessible :name, :app_id
  has_many :series

  validates_presence_of :name
  validates_length_of :name, in: 1..255
end
