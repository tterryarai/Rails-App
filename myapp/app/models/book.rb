#coding: utf-8
class Book < ActiveRecord::Base
  attr_accessible :description, :title, :volume, :status, :publisher_id, :series_id, :author_id
  belongs_to :publisher
  belongs_to :series
  belongs_to :author


  # book application id
  APP_ID=1


  # constants
  STATUSES = ['__not_purchase', '__purchase', '__read']


  # validation
  validates_uniqueness_of :title
  validates_presence_of :title, :volume, :status, :publisher_id, :series_id, :author_id
  validates_length_of :title, :volume, :status, in: 1..255
  validates_inclusion_of :status, within: STATUSES
  validates_associated :publisher, :series, :author

  def self.status_list
    STATUSES
  end

end
