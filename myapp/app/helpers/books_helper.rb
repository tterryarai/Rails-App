module BooksHelper

  def cycle_bk_order(str1 = '', str2 = '')
    if str1.empty? then
      return 'title asc' # set default
    end
    if str2.include?('asc') then
      return str1 + ' desc'
    elsif str2.include?('desc') then
      return str1 + ' asc'
    end
    return 'title asc' # set default
  end

  def get_bk_status_list
    list = []
    Book.status_list.each do |s|
        list << [t('book.status.'+s), s]
    end
    return list
  end

  def get_bk_realm_list
    list = []
    Book.realm_list.each do |r|
      list << [t('book.realm.'+r), r]
    end
    return list
  end

  def get_bk_author_list
    list = []
    Author.all.each do |author|
      list << [ author.name, author.id ]
    end
    return list
  end

end
