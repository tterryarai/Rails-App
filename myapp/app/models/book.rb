# -*- coding: utf-8 -*-
class Book < ActiveRecord::Base
  attr_accessible :description, :title, :volume, :status_id, :publisher_id, :series_id, :author_id
  belongs_to :status
  belongs_to :publisher
  belongs_to :series
  belongs_to :author

# pagination(kaminari) settings
# move as default setting to config/initializers/kaminari_config.rb
#  paginates_per 20

# validation
  validates_presence_of :title, :status_id, :publisher_id, :series_id, :author_id
  validates_associated :status, :publisher, :series, :author

# These are implemented as relations.
# constant
#  BOOK_SHELF_STATUS_LIST = {
#    'Purchased'     => 0,
#    'Not Purchased' => 1,
#    'Read'          => 2
#  }
# Category: Publisher
#  BOOK_SHELF_GROUP1_LIST = {
#    '-'                   => 0,
#    'Wizard of the Coast' => 1,
#    'TSR'                 => 2
#  }
# class methods
#  def self.status_list
#    BOOK_SHELF_STATUS_LIST
#  end
#
#  def self.group1_list
#    BOOK_SHELF_GROUP1_LIST
#  end
# methods
#  def isNotPurchased?
#    BookShelf.status_list.key(self.status)=='NotPurchased'
#  end
#
#  def isPurchased?
#    BookShelf.status_list.key(self.status)=='Purchased'
#  end
#
#  def isRead?
#    BookShelf.status_list.key(self.status)=='Read'
#  end
end
