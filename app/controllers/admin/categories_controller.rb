# frozen_string_literal: true

require_relative 'admin_base_controller'

module Admin
  class CategoriesController < BaseController
    def index
      @categories = Category.all
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)

      if @category.save
        redirect_to %i[admin categories], notice: 'Category created!'
      else
        render :new
      end
    end

    private

    def category_params
      params.require(:category).permit(
        :name
      )
    end

  end
end
