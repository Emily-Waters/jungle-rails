module CategoriesHelper

  def total_category_count
    Category.total_category_count
  end

  def product_count_by_category(id)
    Product.where(category_id: id).count
  end

end