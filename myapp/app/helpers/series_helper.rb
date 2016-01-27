module SeriesHelper
  def get_realm_list
    list = []
    Realm.all.each do |realm|
      list << [ realm.name, realm.id ]
    end
    return list
  end
end
