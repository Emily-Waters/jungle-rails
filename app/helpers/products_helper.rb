# frozen_string_literal: true

module ProductsHelper
  def total_product_count
    Product.total_product_count
  end
end
