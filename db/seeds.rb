require 'faker'

Faker::Config.locale = 'pt-BR'

# Create Categories
20.times do
  Category.create(name: Faker::Commerce.unique.department)
end

# Create Brands
10.times do
  Brand.create(name: Faker::Commerce.unique.brand)
end

# Create Products
50.times do
  Product.create(
    name: Faker::Commerce.unique.product_name,
    price: Faker::Commerce.price(range: 100..500),
    category_id: Category.pluck(:id).sample,
    brand_id: Brand.pluck(:id).sample,
    quantity: Faker::Number.between(from: 1, to: 100),
    expiration_date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31')
  )
end