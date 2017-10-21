class AddVirtualCourseIdToVirtualRun < ActiveRecord::Migration
  def change
    add_column :virtual_runs, :virtual_course_id, :integer
  end
end
