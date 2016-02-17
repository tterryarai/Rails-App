module ApplicationHelper

  def ts(text= '')
    return t(text) + t('app.common.separator')
  end

end
