module ApplicationHelper

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
