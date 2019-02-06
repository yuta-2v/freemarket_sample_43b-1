# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do |number|
  n = number + 1
  product = Product.create!(
    name: "product_#{n}",
    detail: "#{n}detail#{n}",
    status: "1",
    delivery_fee: "#{n + n}",
    area: "anywhere",
    shipping_dates: "someday",
    price: "#{n * n}",
    delivery_status: "aaa"
  )
  product.save!
end

require'csv'

csv_data = CSV.read('db/csv/categories.csv', headers: true)
csv_data.each do |data|
  Category.create!(data.to_hash)
end

csv_data = CSV.read('db/csv/brands.csv', headers: true)
csv_data.each do |data|
  Brand.create!(data.to_hash)
end
