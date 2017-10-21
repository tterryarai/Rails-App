#coding: utf-8
class Provider < ActiveRecord::Base

  # validation
  validates_presence_of :name
  validates_length_of :name, in: 1..255

end
