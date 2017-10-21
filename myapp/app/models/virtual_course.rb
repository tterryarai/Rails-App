#coding: utf-8
class VirtualCourse < ActiveRecord::Base
  has_many :virtual_points
  has_many :virtual_runs
end
