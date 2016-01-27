class Realm < ActiveRecord::Base
  attr_accessible :name
  has_many :series
end
