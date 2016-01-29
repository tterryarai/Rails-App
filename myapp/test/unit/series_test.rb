#coding: utf-8

require 'test_helper'

class SeriesTest < ActiveSupport::TestCase
  test 'series save and load' do
    # setup
    Realm.new({:name => 'realm_0'}).save
    series_normal = Series.new({
      :name => 'series_0',
      :realm_id => Realm.where(:name => 'realm_0').first.id
    })
    series_name_double = Series.new({
      :name => 'series_0',
      :realm_id => Realm.where(:name => 'realm_0').first.id
    })
    series_name_and_realm_id_null = Series.new() # name and realm_id are null
    series_name_null = Series.new({
      :realm_id => Realm.where(:name => 'realm_0').first.id
    })
    series_realm_id_null = Series.new({
      :name => 'series_1',
    })
    series_name_too_short = Series.new({
      :name => '',
      :realm_id => Realm.where(:name => 'realm_0').first.id
    })
    series_name_too_long = Series.new({
      :name => 'too_long_over_255_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_over_255',
      :realm_id => Realm.where(:name => 'realm_0').first.id
    })

    # assertion
    assert series_normal.save, '保存失敗'
    assert !series_name_double.save, '保存成功:name重複'
    assert !series_name_and_realm_id_null.save, '保存成功:name,realm_idなし'
    assert !series_name_null.save, '保存成功:nameなし'
    assert !series_realm_id_null.save, '保存成功:realm_idなし'
    assert !series_name_too_short.save, '保存成功:name短すぎ(1文字未満)'
    assert !series_name_too_long.save, '保存成功:name長すぎ(255文字超え)'
    assert Series.where(:name => 'test_series_0'), '取得失敗'
  end


  test 'series save' do
    # setup
    Realm.new({:name => 'test_realm_0'}).save
    series = Series.new({
      :name => 'test_series_0',
      :realm_id => Realm.where(:name => 'test_realm_0').first.id
    })

    # assertion
    assert series.save, '保存失敗'
    assert_equal Series.where(:name => 'test_series_0').first.name, series.name, '保存前のnameと異なる'
    assert_equal Series.where(:name => 'test_series_0').first.realm, series.realm, '保存前のrealmと異なる'
    assert_equal Series.where(:name => 'test_series_0').first.realm.name, series.realm.name, '保存前のrealm.nameと異なる'
  end

end
