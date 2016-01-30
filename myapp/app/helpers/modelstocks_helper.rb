module ModelstocksHelper

  def cycle_order(str)
    if str.include?('asc') then
      ret = 'desc'
    elsif str.include?('desc') then
      ret = 'asc'
    else
      ret = 'asc'
    end
    return ret
  end

  def get_status_list(app_id = 0)
    list = []
    if app_id > 0 then
      Status.where(:app_id => app_id).each do |status|
        list << [ status.name, status.id ]
      end
    else
      Status.all.each do |status|
        list << [ status.name, status.id ]
      end
    end
    return list
  end

  def get_scale_list
    list = []
    Scale.all.each do |scale|
      list << [ scale.name, scale.id ]
    end
    return list
  end

  def get_publisher_list(app_id = 0)
    list = []
    if app_id > 0 then
      Publisher.where(:app_id => app_id).each do |pub|
        list << [pub.name, pub.id ]
      end
    else
      Publisher.all.each do |pub|
        list << [ pub.name, pub.id ]
      end
    end
    return list
  end

  def get_series_list(app_id = 0)
    list = []
    if app_id > 0 then
      Series.where(:app_id => app_id).each do |series|
        list << [ series.realm.name+':'+series.name, series.id ]
      end
    else
      Series.all.each do |series|
        list << [ series.realm.name+':'+series.name, series.id ]
      end
    end
    return list
  end
end

