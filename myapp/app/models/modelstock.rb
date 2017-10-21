#coding: utf-8
class Modelstock < ActiveRecord::Base

  # application id
  APP_ID=2

  # constants
  SCALES = [
    '(none)',
    '1/20', '1/35', '1/72,1/76', '1/144', '1/700', '1/5000'
  ]

  ICONS = {
    'edit' => 'icons/application_edit.png'
  }

  STATUSES = ['__plan__', '__purchase__', '__build__', '__complete__']

  # validation
  validates_presence_of :name, :scale, :status, :group1, :group2, :provider
  validates_length_of :name, :scale, :status, :group1, :group2, :provider, in: 1..255
  validates_inclusion_of :scale, within: SCALES
  validates_inclusion_of :status, within: STATUSES

  def self.scale_list
    SCALES
  end

  def self.icons
    ICONS
  end

  def self.status_list
    STATUSES
  end

end
