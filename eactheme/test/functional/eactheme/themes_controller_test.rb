require 'test_helper'

module Eactheme
  class ThemesControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
