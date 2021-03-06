# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create({category_code: 'CC00000001', name: 'Lácteos'}, {category_code: 'CC00000002', name: 'Arroz'}, {category_code: 'CC00000003', name: 'Bebidas saborizantes'})
products = Product.create({product_code: 'PC00000001', name: 'Arroz', brand: 'Costeño', quantity: 10, price: 10.10}, {product_code: 'PC00000002', name: 'Leche', brand: 'Gloria', quantity: 13, price: 14.10}, {product_code: 'PC00000003', name: 'Inka Kola 3l', brand: 'Inka kola', quantity: 50, price: 10.50})