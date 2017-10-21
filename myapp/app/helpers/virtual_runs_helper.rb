module VirtualRunsHelper

  def virtual_course_id_selection
    list = []
    VirtualCourse.select(:id, :name).each do |vc|
        list << [vc.name, vc.id]
    end
    return list
  end

end
