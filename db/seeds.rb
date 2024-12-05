Product.destroy_all
User.destroy_all
User.create!(email: "bryan@gmail.com", password: "123456")
User.create!(email: "javier@gmail.com", password: "123456")
User.create!(email: "johnny@gmail.com", password: "123456")
User.create!(email: "joaquin@gmail.com", password: "123456")
User.create!(email: "kike@gmail.com", password: "123456")
puts User.first

file = URI.parse("https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/tottusPE/43260233_1/w=800,h=800,fit=pad").open
product = Product.create!(title: "Smartphone Pro X", price: 799, description: "A high-performance smartphone with a stunning display and advanced features.", user: User.all.sample, stock: 50, category: "Electronics")
product.photos.attach(io: file, filename: "smartphone.png", content_type: "image/png")
product.save

file = URI.parse("https://i5.walmartimages.com/seo/VILINICE-Noise-Cancelling-Headphones-Wireless-Bluetooth-Over-Ear-Headphones-with-Microphone-Black-Q8_0cd6ae5a-8ea9-4e46-8b5e-fffb7da5e6f5.d4808578fda9397ec198b2d5dec46404.jpeg").open
product = Product.create!(title: "Wireless Headphones", price: 199, description: "Noise-cancelling wireless headphones with 20 hours of battery life.", user: User.all.sample, stock: 30, category: "Audio")
product.photos.attach(io: file, filename: "wireless.png", content_type: "image/png")
product.save

file = URI.parse("https://http2.mlstatic.com/D_NQ_NP_922608-MLA75809443663_042024-O.webp").open
product = Product.create!(title: "Gaming Laptop", price: 1299, description: "Powerful gaming laptop with RGB keyboard and advanced cooling.", user: User.all.sample, stock: 20, category: "Computers")
product.photos.attach(io: file, filename: "gammingLaptop.png", content_type: "image/png")
product.save

file = URI.parse("https://oechsle.vteximg.com.br/arquivos/ids/18269115-800-800/2667356.jpg?v=638550789968200000").open
product = Product.create!(title: "4K LED TV", price: 499, description: "Ultra HD 4K TV with vibrant colors and smart features.", user: User.all.sample, stock: 10, category: "Home Entertainment")
product.photos.attach(io: file, filename: "4kLedTv.png", content_type: "image/png")
product.save

file = URI.parse("https://m.media-amazon.com/images/I/81rBNuaNbwL.jpg").open
product = Product.create!(title: "Portable Blender", price: 49, description: "Compact blender for smoothies and shakes on the go.", user: User.all.sample, stock: 100, category: "Kitchen")
product.photos.attach(io: file, filename: "portableBlender.png", content_type: "image/png")
product.save

file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWzOC_UYHVaOFbGjqttKG7NWmihKtnHN97Bg&s").open
product = Product.create!(title: "Electric Scooter", price: 699, description: "Eco-friendly electric scooter with a range of up to 25 miles.", user: User.all.sample, stock: 15, category: "Outdoor")
product.photos.attach(io: file, filename: "electricScooter.png", content_type: "image/png")
product.save

file = URI.parse("https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/129157118_01/w=800,h=800,fit=pad").open
product = Product.create!(title: "Smartwatch Series 5", price: 249, description: "Stylish smartwatch with fitness tracking and notifications.", user: User.all.sample, stock: 40, category: "Wearables")
product.photos.attach(io: file, filename: "Smartwatch.png", content_type: "image/png")
product.save

file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeYY18zyMNvy8lYY10Ng-x9WKuoSetgAgLCw&s").open
product = Product.create!(title: "Home Security Camera", price: 149, description: "Wireless security camera with night vision and motion detection.", user: User.all.sample, stock: 25, category: "Security")
product.photos.attach(io: file, filename: "HomeSecurity.png", content_type: "image/png")
product.save

file = URI.parse("https://images-cdn.ubuy.co.in/6542c4a582dcf81896144baf-hp-victus-15-6-fhd-144hz-gaming-laptop.jpg").open
product = Product.create!(title: "Victus Pro Gamming", price: 999, description: "HP Victus Gaming Laptop[Windows 11 Pro], 15 15.6 FHD IPS 144Hz Display, 6-Core AMD Ryzen 5 7535HS, 16GB DDR5 RAM, 1TB SSD, GeForce RTX 2050, Backlit KB, Numeric Pad, Wi-Fi 6, BT 5.3, RJ45, w/Battery.", user: User.all.sample, stock: 200, category: "Fitness")
product.photos.attach(io: file, filename: "victusPro.png", content_type: "image/png")
product.save

file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Lm_zh4gqSTl5FRv41-6GDDLF29B4_ir1rQ&s").open
product = Product.create!(title: "Mouse Gamming", price: 55, description: "Non-slip yoga mat with extra cushioning for comfort.", user: User.all.sample, stock: 200, category: "Fitness")
product.photos.attach(io: file, filename: "mouseGamming.png", content_type: "image/png")
product.save
