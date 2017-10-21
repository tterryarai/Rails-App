#coding: utf-8
class Author < ActiveRecord::Base

  # validation
  validates_uniqueness_of :name
  validates_presence_of :name
  validates_length_of :name, in: 1..255

end
