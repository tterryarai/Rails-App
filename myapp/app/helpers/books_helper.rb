module BooksHelper

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


  def get_status_list
    list = []
    Status.all.each do |status|
      list << [ status.name, status.id ]
    end
    return list
  end

  def get_author_list
    list = []
    Author.all.each do |author|
      list << [ author.name, author.id ]
    end
    return list
  end

  def get_publisher_list
    list = []
    Publisher.all.each do |pub|
      list << [ pub.name, pub.id ]
    end
    return list
  end

  def get_series_list
    list = []
    Series.all.each do |series|
      list << [ series.realm.name+':'+series.name, series.id ]
    end
    return list
  end
end
