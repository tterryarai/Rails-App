#coding: utf-8

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'book save and load' do
    # setup
    Realm.new({:name => 'realm_0'}).save
    Series.new({
      :name => 'series_0',
      :realm_id => Realm.where(:name => 'realm_0').first.id
    }).save
    Status.new({:name => 'status_0'}).save
    Publisher.new({:name => 'publisher_0'}).save
    Author.new({:name => 'author_0'}).save
    book_normal = Book.new({
      :title => 'book_0',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_title_double = Book.new({
      :title => 'book_0',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_title_null = Book.new({
      :title => nil,
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_title_too_short = Book.new({
      :title => '',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_title_too_long = Book.new({
      :title => 'too_long_over_255_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_over_255',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_volume_null = Book.new({
      :title => 'book_0',
      :volume => nil,
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_volume_too_short = Book.new({
      :title => 'book_0',
      :volume => '',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_volume_too_long = Book.new({
      :title => 'book_0',
      :volume => 'too_long_over_255_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000_over_255',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_description_null = Book.new({
      :title => 'book_0',
      :volume => 'volume_0',
      :description => nil,
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_series_id_null = Book.new({
      :title => 'book_0',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => nil,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_status_id_null = Book.new({
      :title => 'book_0',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => nil,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_publisher_id_null = Book.new({
      :title => 'book_0',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => nil,
      :author_id => Author.where(:name => 'author_0').first.id
    })
    book_author_id_null = Book.new({
      :title => 'book_0',
      :volume => 'volume_0',
      :description => 'description_0',
      :series_id => Series.where(:name => 'series_0').first.id,
      :status_id => Status.where(:name => 'status_0').first.id,
      :publisher_id => Publisher.where(:name => 'publisher_0').first.id,
      :author_id => nil
    })

    # assertion
    assert book_normal.save, '保存失敗'
    assert !book_title_double.save, '保存成功:title重複'
    assert !book_title_null.save, '保存成功:titleなし'
    assert !book_title_too_short.save, '保存成功:title短すぎ(1文字未満)'
    assert !book_title_too_long.save, '保存成功:title長すぎ(255文字超え)'
    assert !book_volume_null.save, '保存成功:volumeなし'
    assert !book_volume_too_short.save, '保存成功:volume短すぎ(1文字未満)'
    assert !book_volume_too_long.save, '保存成功:volume長すぎ(255文字超え)'
    assert !book_description_null.save, '保存成功:descriptionなし'
    assert !book_series_id_null.save, '保存成功:series_idなし'
    assert !book_status_id_null.save, '保存成功:status_idなし'
    assert !book_publisher_id_null.save, '保存成功:publisher_idなし'
    assert !book_author_id_null.save, '保存成功:author_idなし'
    assert Book.where(:title => 'book_0'), '取得失敗'
  end

end
