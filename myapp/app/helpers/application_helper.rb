module ApplicationHelper

  # t() with separator ':'
  def ts(s)
    return t(s) + ':'
  end

  # suppress '(none)' as '-'
  def sn(s)
    (s == '(none)' || s == '') ? '-' : s
  end

  # suppress '(none)' as ''
  def sb(s)
    (s == '(none)' || s == '') ? '' : s
  end

  # shorten string
  def ss(s)
    return Leaf.shorter_name[s].present? ? Leaf.shorter_name[s] : s.truncate(15)
  end

end
