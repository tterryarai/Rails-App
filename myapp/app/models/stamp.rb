#coding: utf-8
class Stamp < ActiveRecord::Base
  belongs_to :leaf

  # application id
  APP_ID=3

  # constants
  IMAGE_PATH_BASE = "#{Rails.root}/app/assets/images/"

  NO_IMAGE = 'no_image.png'
  NOT_PURCHASE_IMAGE = 'not_purchase.png'

  IMAGE_SIZE = '100x100'

  ICONS = {
    '__purchased__' => 'icons/tick.png',
    '__plan__' => 'icons/key.png',
    '__not_purchase__' => 'icons/cross.png',
    'edit' => 'icons/application_edit.png'
  }

  AREAS = [
    '(none)',
    'JP', 'Ryukyu',
    'GB', 'England', 'Northern Ireland', 'Scotland', 'Wales', 'Isle of Man', 'Guernsey', 'Jersey'
  ]

  STATUSES = ['__not_purchase__', '__purchased__', '__plan__' ]

  GROUP1 = [
   '(none)',
   '切手趣味週間', '国際文通週間', '年賀切手', '第一次国立公園', '第二次国立公園',
   '国定公園', '普通切手', '記念切手', '切手シート',
   'Definitive', 'Commemorative', 'Sheet'
  ]

  # validation
  validates_presence_of :name, :area, :status, :group1
  validates_length_of :name, :issue_date, :image_path, in: 1..255
  validates_length_of :remark1, :remark2, :remark3, in: 1..255
  validates_length_of :group1, :group2, :group3, :price, :area, :status, in: 1..255
  validates_inclusion_of :area, within: AREAS
  validates_inclusion_of :status, within: STATUSES
  validates_inclusion_of :group1, within: GROUP1

  def self.image_path_base
    IMAGE_PATH_BASE
  end

  def self.no_image
    NO_IMAGE
  end

  def self.not_purchase_image
    NOT_PURCHASE_IMAGE
  end

  def self.image_size
    IMAGE_SIZE
  end

  def self.icons
    ICONS
  end

  def self.area_list
    AREAS
  end

  def self.status_list
    STATUSES
  end

  def self.group1_list
    GROUP1
  end

  def purchased?
    if self.status == Stamp.status_list[1] then
      return true
    end
    return false      
  end

  def planned?
    if self.status == Stamp.status_list[2] then
      return true
    end
    return false
  end

  def not_purchased?
    if self.status == Stamp.status_list[0] then
      return true
    end
    return false
  end

end
