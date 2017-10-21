#coding: utf-8
class Book < ActiveRecord::Base

  # application id
  APP_ID = 1

  # constants
  ICONS = {
    '__read__' => 'icons/tick.png',
    '__purchased__' => 'icons/key.png',
    '__not_purchase__' => 'icons/cross.png',
    'edit' => 'icons/application_edit.png'
  }

  STATUSES = ['__not_purchase__', '__purchased__', '__read__']

  GROUP1   = ['(none)', 'Forgotten Realms', 'Dragonlance', '和書']

  # validation
  validates_uniqueness_of :title
  validates_presence_of :title, :volume, :status, :group1, :group2, :provider, :author
  validates_length_of :title, :volume, :status, :group1, :group2, :provider, :author, in: 1..255
  validates_inclusion_of :status, within: STATUSES
  validates_inclusion_of :group1, within: GROUP1

  def self.icons
    ICONS
  end

  def self.status_list
    STATUSES
  end

  def self.group1_list
    GROUP1
  end

end
