#coding: utf-8

require 'test_helper'

class RealmTest < ActiveSupport::TestCase
  test 'realm save and load' do
    # setup
    realm_normal = Realm.new({:name => 'realm_0'})
    realm_name_double = Realm.new({:name => 'realm_0'})
    realm_name_null = Realm.new() # name is null
    realm_name_too_short = Realm.new({:name => ''}) # name is ''
    realm_name_too_long = Realm.new({:name => 'too_long_over_255_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_over_255'})

    # assertion
    assert realm_normal.save, '保存失敗'
    assert !realm_name_double.save, '保存成功:name重複'
    assert !realm_name_null.save, '保存成功:nameなし'
    assert !realm_name_too_short.save, '保存成功:name短すぎ(1文字未満)'
    assert !realm_name_too_long.save, '保存成功:name長すぎ(255文字超え)'
    assert Realm.where(:name => 'realm_0'), '取得失敗'
  end

end
