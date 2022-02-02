class Admin::DashboardController < ApplicationController
  def show
  end

  http_basic_authenticate_with name: ENV["ADMIN_USER_NAME"] , password: ENV["ADMIN_PASSWORD"]
end
