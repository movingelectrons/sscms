require 'test_helper'

class PageTest < ActiveSupport::TestCase
  should_validate_presence_of :permalink, :name

  fixtures :all
  context "A Page instance" do
    setup do
      @page = Page.find_by_permalink('index')
    end
  
    should "return its name" do
      assert_equal 'Home Page', @page.name
    end
  end
  
end
