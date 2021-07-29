# Creating apple categories (category reflects the apple's uses):

table = Category.create(name: "Table")
cooking = Category.create(name: "Cooking/Baking")
sauce = Category.create(name: "Apple Sauce")
pie = Category.create(name: "Apple Pie")
juice = Category.create(name: "Apple Juice")
butter = Category.create(name: "Apple Butter")

# Creating the most common American apples and associating them to their categories:

fuji = Apple.create(variety: "Fuji", harvest: "October", notes: "Excellent all-purpose apple with sweet flavor. Great keeper. Best for apple sauce; very good as a table apple.", image_url: "https://bit.ly/3rDmERk")

fuji.categories << [table, cooking, sauce, pie, butter]

gala = Apple.create(variety: "Gala", harvest: "August/September", notes: "Very sweet flavor. Must refrigerate, and even then only keeps for a few weeks. Does not brown when sliced. Ideal for sauce and as a table apple.", image_url: "https://www.freshpoint.com/wp-content/uploads/commodity-gala.jpg")

gala.categories << [table, cooking, sauce, pie, juice, butter]

red_delicious = Apple.create(variety: "Red Delicious", harvest: "September", notes: "The 'default' apple. Available in most stores, served in most schools.", image_url: "https://www.freshpoint.com/wp-content/uploads/commodity-red-delicious.jpg")

red_delicious.categories << [table, sauce, butter]

granny_smith = Apple.create(variety: "Granny Smith", harvest: "October", notes: "Very tart green apple. A popular choice for apple pies.", image_url: "https://www.freshpoint.com/wp-content/uploads/commodity-granny-smith.jpg")

granny_smith.categories << [table, cooking, juice]

honeycrisp = Apple.create(variety: "Honeycrisp", harvest: "September", notes: "Sweet, crisp apple. Stores well. Very good table apple, good for sauce, but the sauce will be watery. Best use is for juice.", image_url: "https://www.freshpoint.com/wp-content/uploads/commodity-honey-crisp.jpg")

honeycrisp.categories << [table, cooking, sauce, pie, juice, butter]

golden_delicious = Apple.create(variety: "Golden Delicious", harvest: "Late September", notes: "Sweet, mild flavor. Store in the refrigerator. Very good for sauce.", image_url: "https://www.freshpoint.com/wp-content/uploads/commodity-golden-delicious.jpg")

golden_delicious.categories << [table, cooking, sauce, pie, juice, butter]

mcintosh = Apple.create(variety: "McIntosh", harvest: "September", notes: "Good for sauce.", image_url: "https://www.freshpoint.com/wp-content/uploads/commodity-apple-mcIntosh.jpg")

mcintosh.categories << [table, sauce, juice, butter]

pink_lady = Apple.create(variety: "Pink Lady", harvest: "Late October", notes: "Good all-around apple. Tart/Sweet flavor.", image_url: "https://www.freshpoint.com/wp-content/uploads/pink-lady.jpg")

pink_lady.categories << [table, cooking, sauce, pie, juice, butter]

braeburn = Apple.create(variety: "Braeburn", harvest: "Early October", notes: "Aromatic and tart.", image_url: "https://www.freshpoint.com/wp-content/uploads/braeburn.jpg")

braeburn.categories << [table, cooking, sauce, pie]

ambrosia = Apple.create(variety: "Ambrosia", harvest: "Late September", notes: "Store in the refrigerator. Does not brown when sliced. Sweet and honey-like flavor. Good for salads and snacks.", image_url: "https://www.freshpoint.com/wp-content/uploads/commodity-ambrosia.jpg")

ambrosia.categories << [table, cooking, sauce, pie, juice, butter]