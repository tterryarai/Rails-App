module SeriesHelper
  def get_realm_list(app_id = 0)
    list = []
    if app_id > 0 then
      Realm.where(:app_id => app_id).each do |realm|
        list << [ realm.name, realm.id ]
      end
    else
      Realm.all.each do |realm|
        list << [ realm.app_id.to_s+' : '+realm.name, realm.id ]
      end
    end      
    return list
  end
end
