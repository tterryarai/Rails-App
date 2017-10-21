module BooksHelper

  def book_status_selection
    list = []
    Book.status_list.each do |s|
        list << [t('book.statuses.' + s), s]
    end
    return list
  end

  def book_group1_selection
    list = []
    Book.group1_list.each do |g|
        list << [g, g]
    end
    return list
  end

  def book_group2_selection
    list = []
    Group.where(app_id: Book::APP_ID).each do |g|
        name = g.group1 + '/' + g.group2
        list << [name, g.group2]
    end
    return list
  end

  def book_provider_selection
    list = []
    Provider.where(app_id: Book::APP_ID).each do |p|
        list << [p.name, p.name]
    end
    return list
  end

  def book_author_selection
    list = []
    Author.all.each do |a|
        list << [a.name, a.name]
    end
    return list
  end

end
