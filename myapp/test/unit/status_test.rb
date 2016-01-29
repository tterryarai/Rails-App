#coding: utf-8

require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test 'status save and load' do
    # setup
    status_normal = Status.new({:name => 'status_0'})
    status_name_double = Status.new({:name => 'status_0'})
    status_name_null = Status.new() # name is null
    status_name_too_short = Status.new({:name => ''}) # name is ''
    status_name_too_long = Status.new({:name => 'too_long_over_255_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_over_255'})

    # assertion
    assert status_normal.save, '保存失敗'
    assert !status_name_double.save, '保存成功:name重複'
    assert !status_name_null.save, '保存成功:nameなし'
    assert !status_name_too_short.save, '保存成功:name短すぎ(1文字未満)'
    assert !status_name_too_long.save, '保存成功:name長すぎ(255文字超え)'
    assert Status.where(:name => 'test_status_0'), '取得失敗'
  end

end
