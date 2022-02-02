class Admin::DashboardController < ApplicationController

  def show
    @product_count = Product.count
    @category_count = Category.count
  end

  http_basic_authenticate_with name: ENV["ADMIN_USER_NAME"] , password: ENV["ADMIN_PASSWORD"]
end
