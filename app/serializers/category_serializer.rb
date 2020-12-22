class CategorySerializer < ActiveModel::Serializer
  attributes :id, :category_code, :name

  has_many :products
end
