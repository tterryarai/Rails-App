#coding: utf-8
class Modelstock < ActiveRecord::Base
  attr_accessible :description, :name, :scale, :status, :realm, :publisher_id, :series_id
  belongs_to :publisher
  belongs_to :series


  # modelstock application id
  APP_ID=2


  # constants
  SCALES = ['1/20', '1/35', '1/72,1/76', '1/144', '1/700', '1/5000']

  STATUSES = ['__plan', '__purchase', '__build', '__complete']

  REALMS = ['__none', '__ijn', '__usn', '__hms', '__sms_dkm', '__fn', '__rn',
    '__other_navy', '__logh', '__mobilesuit_gundam', '__space_battleship_yamato', '__fss' ]


  # validation
  validates_presence_of :name, :scale, :status, :realm, :publisher_id, :series_id
  validates_length_of :name, :scale, :status, :realm, in: 1..255
  validates_inclusion_of :scale, within: SCALES
  validates_inclusion_of :status, within: STATUSES
  validates_inclusion_of :realm, within: REALMS
  validates_associated :publisher, :series

  def self.scale_list
    SCALES
  end

  def self.status_list
    STATUSES
  end

  def self.realm_list
    REALMS
  end

end
