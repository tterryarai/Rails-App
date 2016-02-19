module ModelstocksHelper

  def cycle_order(str1 = '', str2 = '')
    if str1.empty? then
      return 'name asc' # set default
    end
    if str2.include?('asc') then
      return str1 + ' desc'
    elsif str2.include?('desc') then
      return str1 + ' asc'
    end
    return 'name asc' # set default
  end

  def get_status_list
    list = []
    Modelstock.status_list.each do |s|
        list << [t('modelstock.status.'+s), s]
    end
    return list
  end

  def get_scale_list
    list = []
    Modelstock.scale_list.each do |s|
      list << [s, s]
    end
    return list
  end

  def get_ms_realm_list
    list = []
    Modelstock.realm_list.each do |r|
      list << [t('modelstock.realm.'+r), r]
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

