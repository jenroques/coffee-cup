# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

shops = Shop.create([
  {
    name: "Piper's Coffee",
    image_url: "https://cdn.shopify.com/s/files/1/0811/2861/files/Pipers_Logo_-_Final_100x@2x.png?v=1613592087"
  },
  {
    name: "Starbucks Coffee",
    image_url: "https://logos-world.net/wp-content/uploads/2020/09/Starbucks-Logo-700x394.png"
  },
  {
    name: "Sump Coffee",
    image_url: "https://cdn.shopify.com/s/files/1/0210/6998/products/IMG_2869_768x768.jpg?v=1665168606"
  },
  {
    name: "Blueprint Coffee",
    image_url: "https://blueprintcoffee.com/app/uploads/2021/12/blueprint-banner-logo-resized.png"
  },
  {
    name: "Northwest Coffee Roasting",
    image_url: "https://images.squarespace-cdn.com/content/v1/544fabffe4b0df6ecb02a774/1424988428595-0DWFISSEKEXE4CEJ83KM/newnorthwestlogo.png?format=1500w"
  },
  {
    name: "Coffeestamp",
    image_url: "https://cdn.shopify.com/s/files/1/0046/5800/4068/files/LogoHorizontal_Header_x50@2x.png?v=1613527199"
  },
  {
    name: "Shaw's Coffee Limited",
    image_url: "https://shawscoffee.com/wp-content/uploads/2018/03/shaws-coffee-logo-sm-d.jpg"
  },
  {
    name: "Protagonist Cafe",
    image_url: "https://order-protagonist.square.site/uploads/b/9342be90-69f7-11ea-a3de-3f0116e34733/Logo_Protagonist_BW_Transparent.png?width=400"
  }
])

reviews = Review.create([
  {
    title: "Neat Place",
    desc: "Cute, but busy and slow.",
    score: 4,
    user_id: 1,
    shop_id: 1
  }
])

users = User.create([
  {
    name: "CoffeeFan1",
    password_digest: "coffee"
  }
])
