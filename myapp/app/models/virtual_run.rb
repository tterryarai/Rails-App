#coding: utf-8
class VirtualRun < ActiveRecord::Base
  belongs_to :virtual_course

  # constants
  IMAGE_PATH = {
    'Running' => 'icons/virtual_run_running_red.png',
    'Not_running' => 'icons/virtual_run_not_running_gray.png',
    'Goal' => 'icons/virtual_run_goal_blue.png',
    'Pass' => 'icons/virtual_run_footprint_red.png',
    'Pass_goal' => 'icons/virtual_run_footprint_blue.png'
  }

  ICONS = {
    'edit' => 'icons/application_edit.png'
  }

  def self.image_path
    IMAGE_PATH
  end

  def self.icons
    ICONS
  end

end
