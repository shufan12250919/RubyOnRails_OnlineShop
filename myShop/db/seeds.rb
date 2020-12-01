# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(name: "Winne the Pooh",
  description:
    %{
        So soft. So fun. Stuffed with fluff. Every hug is sure to bring a smile.
        With authentic Disney sculpturing and embroidered details, Winnie the Pooh
        and his plush pals from the Hundred Acre Wood will always be waiting for you!
    },
    image: 'winne.jpg',
    price: 30.00)
# . . .
Product.create!(name: "Piglet",
  description:
    %{
        This little piggy is small in size but big in heart.
        Just one cuddle and Pooh's faithful friend Piglet
        is sure to make his way straight into your heart.
    },
    image: 'piglet.jpg',
    price: 5.00)
# . . .
Product.create!(name: "Eeyore",
  description:
    %{
        This darling vintage Eeyore stuffed animal is begging you to give him a good home!
        He is made by Gund and in excellent vintage condition, with no rips or holes.
        He has a yarn mane and cloth appliqué eyes, as well as a fuzzy body.
        Eeyore measures 8.5" tall and 8" long.
    },
    image: 'eeyore.jpg',
    price: 7.00)
# . . .
Product.create!(name: "Totoro",
  description:
    %{
        Very soft and fluffy material, Cuteness overload famous character from Studio Ghibli,
        PP Cotton filling , Ages 0+, Approx. 20cm!
    },
    image: 'totoro.jpg',
    price: 8.00)
# . . .
Product.create!(name: "Baymax",
  description:
    %{
        Cuddle up to our soft stuffed Baymax for compassionate care and
        comfort throughout the daily adventure of life.
        This big plush robot is sure to cure any dull day!
    },
    image: 'baymax.jpg',
    price: 10.00)
