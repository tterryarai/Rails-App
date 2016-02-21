#coding: utf-8
class Stamp < ActiveRecord::Base
  attr_accessible :name, :issue_date, :description, :image_path, :region, :status, :price, :group1, :group2, :group3, :remark1, :remark2, :remark3


  # stamp application id
  APP_ID=3


  # constants
  IMAGE_PATH_BASE = 'stamps/'
  NO_IMAGE = 'no_image.png'

  REGIONS = {
    '(none)'           => 0,
    'JP'               => 1,
    'GB'               => 2,
    'Ryukyu'           => 3,
    'England'          => 4,
    'Northern Ireland' => 5,
    'Scotland'         => 6,
    'Wales'            => 7,
    'Isle of Mann'     => 8,
    'Guernsey'         => 9,
    'Jersey'           => 10
  }

  STATUSES = {
    'Not Purchased' => 0,
    'Planning'      => 1,
    'Purchased'     => 2
  }

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
  validates_presence_of :name, :image_path, :region, :status
  validates_length_of :name, :image_path, in: 1..255
  validates_inclusion_of :region, within: REGIONS
  validates_inclusion_of :status, within: STATUSES
  validates_inclusion_of :greoup1, within: GROUP1


  def self.region_list
    REGIONS
  end

  def self.status_list
    STATUSES
  end

  def self.group1_list
    GROUP1
  end
end
