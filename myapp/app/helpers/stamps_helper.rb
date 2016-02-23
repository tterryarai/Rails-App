module StampsHelper

  def get_area_list
    list = []
    Stamp.area_list.each do |s|
        list << [s, s]
    end
    return list
  end

  def get_own_list
    list = []
    Stamp.own_list.each do |s|
        list << [s, s]
    end
    return list
  end

  def get_group1_list
    list = []
    Stamp.group1_list.each do |s|
        list << [s, s]
    end
    return list
  end

  def cycle_order(str = '')
    if str == 'asc' then
      return 'desc'
    elsif str == 'desc' then
      return 'asc'
    end
    return 'asc'
  end

end
