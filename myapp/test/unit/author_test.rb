#coding: utf-8

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test 'author save and load' do
    # setup
    author_normal = Author.new({:name => 'author_0'})
    author_name_double = Author.new({:name => 'author_0'})
    author_name_null = Author.new() # name is null
    author_name_too_short = Author.new({:name => ''}) # name is ''
    author_name_too_long = Author.new({:name => 'too_long_over_255_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_over_255'})

    # assertion
    assert author_normal.save, '保存失敗'
    assert !author_name_double.save, '保存成功:name重複'
    assert !author_name_null.save, '保存成功:nameなし'
    assert !author_name_too_short.save, '保存成功:name短すぎ(1文字未満)'
    assert !author_name_too_long.save, '保存成功:name長すぎ(255文字超え)'
    assert Author.where(:name => 'author_0'), '取得失敗'
  end

end
