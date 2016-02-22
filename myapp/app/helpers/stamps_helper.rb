module StampsHelper

  def get_region_list
    list = []
    Stamp.region_list.each do |s|
        list << [s[0], s[1]]
    end
    return list
  end

  def get_status_list
    list = []
    Stamp.status_list.each do |s|
        list << [s[0], s[1]]
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
