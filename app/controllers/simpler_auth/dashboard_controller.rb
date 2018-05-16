require_dependency "simpler_auth/application_controller"

module SimplerAuth
  class DashboardController < ApplicationController
    before_action :authenticate_administrator!
  end
end
