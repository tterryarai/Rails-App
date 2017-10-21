module ModelstocksHelper

  def modelstock_scale_selection
    list = []
    Modelstock.scale_list.each do |s|
        list << [s, s]
    end
    return list
  end

  def modelstock_status_selection
    list = []
    Modelstock.status_list.each do |s|
        list << [t('modelstock.statuses.' + s), s]
    end
    return list
  end

  def modelstock_provider_selection
    list = []
    Provider.where(app_id: Modelstock::APP_ID).each do |p|
        list << [p.name, p.name]
    end
    return list
  end

end
