Order.destroy_all
Product.destroy_all
User.destroy_all

User.create!(email: "bryan@gmail.com", password: "123456")
User.create!(email: "javier@gmail.com", password: "123456")
User.create!(email: "johnny@gmail.com", password: "123456")
User.create!(email: "joaquin@gmail.com", password: "123456")
puts User.first

file = URI.parse("https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/tottusPE/43260233_1/w=800,h=800,fit=pad").open
product = Product.create!(
  title: "Smartphone Pro X",
  price: 799,
  description: "Experience the ultimate in smartphone technology with the Smartphone Pro X. Featuring a crystal-clear display, cutting-edge performance, and an advanced triple-camera system, this device is perfect for photography enthusiasts and tech lovers alike. Stay connected with 5G capability and enjoy seamless multitasking with its powerful processor.",
  user: User.all.sample,
  stock: 4,
  category: "Electronics"
)
product.photos.attach(io: file, filename: "smartphone.png", content_type: "image/png")
product.save

file = URI.parse("https://i5.walmartimages.com/seo/VILINICE-Noise-Cancelling-Headphones-Wireless-Bluetooth-Over-Ear-Headphones-with-Microphone-Black-Q8_0cd6ae5a-8ea9-4e46-8b5e-fffb7da5e6f5.d4808578fda9397ec198b2d5dec46404.jpeg").open
product = Product.create!(
  title: "Wireless Headphones",
  price: 199,
  description: "Immerse yourself in high-quality audio with these noise-cancelling wireless headphones. Designed for comfort, they feature plush ear cushions and deliver up to 20 hours of battery life. Whether you're working, traveling, or relaxing, enjoy crisp, clear sound with enhanced bass.",
  user: User.all.sample,
  stock: 3,
  category: "Audio"
)
product.photos.attach(io: file, filename: "wireless.png", content_type: "image/png")
product.save

file = URI.parse("https://http2.mlstatic.com/D_NQ_NP_922608-MLA75809443663_042024-O.webp").open
product = Product.create!(
  title: "Gaming Laptop",
  price: 1299,
  description: "Unleash your gaming potential with this powerful gaming laptop. Equipped with an RGB keyboard, advanced cooling system, and the latest graphics card, it’s built to handle even the most demanding games. Enjoy smooth performance and stunning visuals on a vibrant display.",
  user: User.all.sample,
  stock: 1,
  category: "Computers"
)
product.photos.attach(io: file, filename: "gammingLaptop.png", content_type: "image/png")
product.save

file = URI.parse("https://oechsle.vteximg.com.br/arquivos/ids/18269115-800-800/2667356.jpg?v=638550789968200000").open
product = Product.create!(
  title: "4K LED TV",
  price: 499,
  description: "Transform your home entertainment experience with this Ultra HD 4K LED TV. Featuring vibrant colors, smart connectivity options, and built-in streaming services, this TV is perfect for binge-watching your favorite shows or enjoying movie nights with family.",
  user: User.all.sample,
  stock: 5,
  category: "Home Entertainment"
)
product.photos.attach(io: file, filename: "4kLedTv.png", content_type: "image/png")
product.save

file = URI.parse("https://m.media-amazon.com/images/I/81rBNuaNbwL.jpg").open
product = Product.create!(
  title: "Portable Blender",
  price: 49,
  description: "Blend smoothies, shakes, and more on the go with this portable blender. Its compact design makes it easy to carry, while the rechargeable battery ensures you can enjoy fresh beverages anytime, anywhere. Perfect for fitness enthusiasts and busy lifestyles.",
  user: User.all.sample,
  stock: 3,
  category: "Kitchen"
)
product.photos.attach(io: file, filename: "portableBlender.png", content_type: "image/png")
product.save

file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWzOC_UYHVaOFbGjqttKG7NWmihKtnHN97Bg&s").open
product = Product.create!(
  title: "Electric Scooter",
  price: 699,
  description: "Get around town with ease and style using this eco-friendly electric scooter. With a range of up to 25 miles and a top speed of 15 mph, it’s perfect for commuting or leisurely rides. Its foldable design makes storage and transportation a breeze.",
  user: User.all.sample,
  stock: 2,
  category: "Outdoor"
)
product.photos.attach(io: file, filename: "electricScooter.png", content_type: "image/png")
product.save

file = URI.parse("https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/129157118_01/w=800,h=800,fit=pad").open
product = Product.create!(
  title: "Smartwatch Series 5",
  price: 249,
  description: "Stay connected and track your fitness goals with the Smartwatch Series 5. Featuring customizable watch faces, fitness tracking, and notification alerts, this smartwatch is both stylish and functional. Perfect for anyone looking to balance work and wellness.",
  user: User.all.sample,
  stock: 1,
  category: "Wearables"
)
product.photos.attach(io: file, filename: "Smartwatch.png", content_type: "image/png")
product.save

file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeYY18zyMNvy8lYY10Ng-x9WKuoSetgAgLCw&s").open
product = Product.create!(
  title: "Home Security Camera",
  price: 149,
  description: "Ensure your home is safe with this wireless security camera. It features night vision, motion detection, and remote viewing capabilities, providing peace of mind whether you're at home or away.",
  user: User.all.sample,
  stock: 2,
  category: "Security"
)
product.photos.attach(io: file, filename: "HomeSecurity.png", content_type: "image/png")
product.save

file = URI.parse("https://images-cdn.ubuy.co.in/6542c4a582dcf81896144baf-hp-victus-15-6-fhd-144hz-gaming-laptop.jpg").open
product = Product.create!(
  title: "Victus Pro Gaming Laptop",
  price: 999,
  description: "Experience gaming like never before with the Victus Pro Gaming Laptop. Boasting a 15.6” FHD IPS display, AMD Ryzen processor, and GeForce RTX graphics, this laptop is built for speed and performance. Its sleek design and powerful specs make it a gamer’s dream.",
  user: User.all.sample,
  stock: 1,
  category: "Computers"
)
product.photos.attach(io: file, filename: "victusPro.png", content_type: "image/png")
product.save

file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Lm_zh4gqSTl5FRv41-6GDDLF29B4_ir1rQ&s").open
product = Product.create!(
  title: "Gaming Mouse",
  price: 55,
  description: "Enhance your gaming precision with this ergonomic gaming mouse. Featuring customizable buttons, adjustable DPI settings, and a sleek design, this mouse ensures an edge in every game. Perfect for professional gamers and enthusiasts.",
  user: User.all.sample,
  stock: 2,
  category: "Gaming Accessories"
)
product.photos.attach(io: file, filename: "mouseGamming.png", content_type: "image/png")
product.save
