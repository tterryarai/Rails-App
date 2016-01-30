#coding: utf-8
class Book < ActiveRecord::Base
  attr_accessible :description, :title, :volume, :status_id, :publisher_id, :series_id, :author_id
  belongs_to :status
  belongs_to :publisher
  belongs_to :series
  belongs_to :author

  validates_uniqueness_of :title
  validates_presence_of :title, :volume, :status_id, :publisher_id, :series_id, :author_id
  validates_length_of :title, :volume, in: 1..255
  validates_associated :status, :publisher, :series, :author
end
