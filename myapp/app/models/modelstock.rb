#coding: utf-8
class Modelstock < ActiveRecord::Base
  attr_accessible :description, :name, :publisher_id, :scale_id, :series_id, :status_id
  belongs_to :status
  belongs_to :publisher
  belongs_to :series
  belongs_to :scale

  validates_presence_of :name, :scale_id, :status_id, :publisher_id, :series_id
  validates_length_of :name, in: 1..255
  validates_associated :status, :publisher, :series, :scale

  # modelstock application id
  APP_ID=2

end
