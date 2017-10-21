#coding: utf-8
class Leaf < ActiveRecord::Base
  has_many :stamps

  # application id
  APP_ID=4

  # constants
  GROUP1 = [
    '(none)',
    '日本', '琉球',
    'GB', 'England', 'Northern Ireland', 'Scotland', 'Wales',
    'Isle of Man', 'Guernsey', 'Jersey',
    'その他'
  ]

  GROUP2 = [
    '(none)',
    '普通切手', '記念切手', '年賀切手', 'シート',
    'Definitive', 'Commemorative', 'Miniature Sheet',
    'その他'
  ]

  SHORTER_NAME = {
    'Definitive' => 'Def.',
    'Commemorative' => 'Comm.',
    'Miniature Sheet' => 'MS'
  }


  # validation
  validates_presence_of :title, :group1, :group2
  validates_length_of :title, :group1, :group2, in: 1..255
  validates_inclusion_of :group1, within: GROUP1
  validates_inclusion_of :group2, within: GROUP2

  def self.group1_list
    GROUP1
  end

  def self.group2_list
    GROUP2
  end

  def self.shorter_name
    SHORTER_NAME
  end

end
