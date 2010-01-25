require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  context "on GET to index for index" do
    setup do
      get :show, :permalink => "index"
    end
    should_respond_with :success
    should_render_template :show
    should_not_set_the_flash
  end

end
