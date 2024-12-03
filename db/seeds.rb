Product.destroy_all
User.destroy_all
User.create!(email: "bryan@gmail.com", password: "123456")
User.create!(email: "javier@gmail.com", password: "123456")
User.create!(email: "johnny@gmail.com", password: "123456")
User.create!(email: "joaquin@gmail.com", password: "123456")
User.create!(email: "kike@gmail.com", password: "123456")

Product.create!(title: "Smartphone Pro X", price: 799, description: "A high-performance smartphone with a stunning display and advanced features.", user_id: 1, stock: 50, category: "Electronics")
Product.create!(title: "Wireless Headphones", price: 199, description: "Noise-cancelling wireless headphones with 20 hours of battery life.", user_id: 2, stock: 30, category: "Audio")
Product.create!(title: "Gaming Laptop", price: 1299, description: "Powerful gaming laptop with RGB keyboard and advanced cooling.", user_id: 3, stock: 20, category: "Computers")
Product.create!(title: "4K LED TV", price: 499, description: "Ultra HD 4K TV with vibrant colors and smart features.", user_id: 1, stock: 10, category: "Home Entertainment")
Product.create!(title: "Portable Blender", price: 49, description: "Compact blender for smoothies and shakes on the go.", user_id: 4, stock: 100, category: "Kitchen")
Product.create!(title: "Electric Scooter", price: 699, description: "Eco-friendly electric scooter with a range of up to 25 miles.", user_id: 5, stock: 15, category: "Outdoor")
Product.create!(title: "Smartwatch Series 5", price: 249, description: "Stylish smartwatch with fitness tracking and notifications.", user_id: 2, stock: 40, category: "Wearables")
Product.create!(title: "Home Security Camera", price: 149, description: "Wireless security camera with night vision and motion detection.", user_id: 3, stock: 25, category: "Security")
Product.create!(title: "Air Purifier", price: 199, description: "Quiet and efficient air purifier for a healthier living space.", user_id: 4, stock: 50, category: "Home Appliances")
Product.create!(title: "Yoga Mat", price: 29, description: "Non-slip yoga mat with extra cushioning for comfort.", user_id: 5, stock: 200, category: "Fitness")
