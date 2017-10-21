module LeafsHelper

  def leaf_group1_selection
    list = []
    Leaf.group1_list.each do |lf|
        list << [lf, lf]
    end
    return list
  end

  def leaf_group2_selection
    list = []
    Leaf.group2_list.each do |lf|
        list << [lf, lf]
    end
    return list
  end

  def leaf_title(t, s)
    if s.present? then
      return t + '>>' + s
    else
      return t
    end
  end

  def leaf_image(s)
    if s.purchased? && s.image_path.present? && File.exist?(Stamp.image_path_base + s.image_path) then
      return s.image_path
    elsif s.not_purchased? then
      return Stamp.not_purchase_image
    end
    return Stamp.no_image
  end
end
