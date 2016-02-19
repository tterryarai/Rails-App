module ApplicationHelper

  def get_series_list(app_id = 0)
    list = []
    if app_id > 0 then
      Series.where(:app_id => app_id).each do |series|
        list << [ series.name, series.id ]
      end
    end
    return list
  end

  def get_publisher_list(app_id = 0)
    list = []
    if app_id > 0 then
      Publisher.where(:app_id => app_id).each do |pub|
        list << [pub.name, pub.id ]
      end
    end
    return list
  end

  def ts(text= '')
  # i18n translation with separator
    return t(text) + t('app.common.separator')
  end

  def td(str1='', str2='')
  # i18n translation for data(__zzzz)
    if str1.present? && str2.match(/^__.*/).present? then
      return t(str1 + '.' + str2)
    end
    return str2
  end

end
