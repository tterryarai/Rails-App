#coding: utf-8
class Group < ActiveRecord::Base

  # validation
  validates_presence_of :app_id, :group1, :group2
  validates_length_of :group1, :group2, in: 1..255

end
