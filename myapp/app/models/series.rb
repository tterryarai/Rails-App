class Series < ActiveRecord::Base
  attr_accessible :name, :realm_id
  belongs_to :realm
end
