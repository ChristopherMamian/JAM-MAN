6.times do
  Category.create(name:Faker::Commerce.department)
end

60.times do
  Article.create(
    title:Faker::Commerce.product_name,
    content:Faker::Lorem.paragraph,
    price:Faker::Commerce.price,
    image:'http://lorempixel.com/400/200/',
    author:Faker::Name.name,
    category_id: rand(1..6)
    )
end
