module ModelstocksHelper

  def cycle_ms_order(str1 = '', str2 = '')
    if str1.empty? then
      return 'name asc' # set default
    end
    if str2.include?('asc') then
      return str1 + ' desc'
    elsif str2.include?('desc') then
      return str1 + ' asc'
    end
    return str1 + ' asc' # set default
  end

  def get_ms_status_list
    list = []
    Modelstock.status_list.each do |s|
        list << [t('modelstock.status.'+s), s]
    end
    return list
  end

  def get_ms_scale_list
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

end

