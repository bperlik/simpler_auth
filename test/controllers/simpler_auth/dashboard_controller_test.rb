require 'test_helper'

module SimplerAuth
  class DashboardControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get dashboard_index_url
      assert_response :success
    end

  end
end
