require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  test 'author save' do
    author = Author.new({
      :name => 'test author'
    })
    assert author.save, 'Author save failed'
  end

  test 'author name exist' do
    author = Author.first
    assert_not_empty author.name, 'Author name is not exist'
  end

end
