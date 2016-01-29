#coding: utf-8

require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  test 'publisher save and load' do
    # setup
    publisher_normal = Publisher.new({:name => 'publisher_0'})
    publisher_name_double = Publisher.new({:name => 'publisher_0'})
    publisher_name_null = Publisher.new() # name is null
    publisher_name_too_short = Publisher.new({:name => ''}) # name is ''
    publisher_name_too_long = Publisher.new({:name => 'too_long_over_255_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_over_255'})

    # assertion
    assert publisher_normal.save, '保存失敗'
    assert !publisher_name_double.save, '保存成功:name重複'
    assert !publisher_name_null.save, '保存成功:nameなし'
    assert !publisher_name_too_short.save, '保存成功:name短すぎ(1文字未満)'
    assert !publisher_name_too_long.save, '保存成功:name長すぎ(255文字超え)'
    assert Publisher.where(:name => 'publisher_0'), '取得失敗'
  end

end
