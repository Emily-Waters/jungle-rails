module CategoriesHelper

    def product_count_by_category(id)
      Product.where(category_id: id).count
    end

end