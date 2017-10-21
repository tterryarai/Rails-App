module StampsHelper

  def stamp_override_defaults(s)
    s.remark1 = t('stamp.override.remark1')
    s.remark2 = t('stamp.override.remark2')
  end

  def stamp_area_selection
    list = []
    Stamp.area_list.each do |area|
        list << [area, area]
    end
    return list
  end

  def stamp_status_selection
    list = []
    Stamp.status_list.each do |s|
        list << [t('stamp.statuses.' + s), s]
    end
    return list
  end

  def stamp_group1_selection
    list = []
    Stamp.group1_list.each do |g|
        list << [g, g]
    end
    return list
  end

  def stamp_leaf_id_selection
    list = []
    list << ['(none)', 0]
    Leaf.all.each do |lf|
        name = lf.group1 + '/' + lf.group2 + '/' + lf.title
        list << [name, lf.id]
    end
    return list
  end

  def stamp_leaf_name(s)
    if s.leaf_id > 0 then
      return name = s.leaf.group1 + '/' + s.leaf.group2 + '/' + s.leaf.title
    else
      return '(none)'
    end
  end

  def stamp_image(i, s)
    if s == Stamp.status_list[1] then
      if i.present? && File.exist?(Stamp.image_path_base + i) then
        return i
      else
        return Stamp.no_image
      end
    else
      return Stamp.not_purchase_image
    end
  end

end
