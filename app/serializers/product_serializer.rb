class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_code, :name, :brand, :quantity, :price

  belongs_to :category
end
