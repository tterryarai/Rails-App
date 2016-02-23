#coding: utf-8
class Stamp < ActiveRecord::Base
  attr_accessible :name, :issue_date, :description, :image_path, :area, :own, :price, :group1, :group2, :group3, :remark1, :remark2, :remark3


  # stamp application id
  APP_ID=3

  # constants
  IMAGE_PATH_BASE = 'stamps/'
  NO_IMAGE = 'no_image.png'

  AREAS = ['(none)', 'JP', 'GB', 'Ryukyu', 'England', 'Northern Ireland',
    'Scotland', 'Wales', 'Isle of Mann', 'Guernsey', 'Jersey']

  OWNS = ['Not Purchased', 'Planning', 'Purchased']

  GROUP1 = [
   '(none)',
   '切手趣味週間',
   '国際文通週間',
   '年賀切手',
   '第一次国立公園',
   '第二次国立公園',
   '国定公園',
   '普通切手',
   '記念切手',
   '切手シート',
   'Definitive',
   'Commemorative',
   'Sheet'
  ]


  # validation
  validates_presence_of :name, :area, :own, :group1

  validates_length_of :name, :area, :own, :group1, in: 1..255
  validates_length_of :image_path, :price, :group2, :group3, :remark1, :remark2, :remark3, in: 0..255
  validates_length_of :description, in: 0..1024

  validates_inclusion_of :area, within: AREAS
  validates_inclusion_of :own, within: OWNS
  validates_inclusion_of :group1, within: GROUP1


  def self.area_list
    AREAS
  end

  def self.own_list
    OWNS
  end

  def self.group1_list
    GROUP1
  end
end
