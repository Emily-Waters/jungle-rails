# frozen_string_literal: true

class Category < ActiveRecord::Base
  has_many :products

  scope :total_category_count, -> { Category.count }
end
