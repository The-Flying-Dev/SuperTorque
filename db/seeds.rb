# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.where(title: 'Porche',
  description:
    %{<p>
      <em>"Lorem ipsum dolor sit amet</em>, consectetur adipiscing elit, sed do eiusmod
         tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
         quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
         Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.          
      </p>},
  image_url: 'car1.jpg',    
  price: 150000.00).first_or_create
# . . .
Product.where(title: 'Lambo',
  description:
    %{<p>
    <em>"Lorem ipsum dolor sit amet</em>, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.
      </p>},
  image_url: 'car2.jpg',
  price: 200000.00).first_or_create
# . . .

Product.where(title: 'Merc',
  description:
    %{<p>
    <em>"Lorem ipsum dolor sit amet</em>, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.
      </p>},
  image_url: 'car3.jpg',
  price: 180000.00).first_or_create

  Product.where(title: 'car4',
  description:
    %{<p>
    <em>"Lorem ipsum dolor sit amet</em>, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.
      </p>},
  image_url: 'about1.jpg',
  price: 180000.00).first_or_create

  Product.where(title: 'car5',
  description:
    %{<p>
    <em>"Lorem ipsum dolor sit amet</em>, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.
      </p>},
  image_url: 'about2.jpg',
  price: 180000.00).first_or_create

  Product.where(title: 'car6',
  description:
    %{<p>
    <em>"Lorem ipsum dolor sit amet</em>, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.
      </p>},
  image_url: 'about3.jpg',
  price: 180000.00).first_or_create


  Product.where(title: 'car7',
  description:
    %{<p>
    <em>"Lorem ipsum dolor sit amet</em>, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.
      </p>},
  image_url: 'about4.jpg',
  price: 180000.00).first_or_create

 