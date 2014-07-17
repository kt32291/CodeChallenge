# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = [
  { title: "Standing Desk",
    description: "Made with sustainable materials like natural bamboo and recycled aluminum, NextDesk features a state-of-the-art microprocessor-controlled lift system that moves the desk surface up and down in seconds. Transitions are so smooth you won’t ripple your morning cup of coffee and so quiet that no one will notice.",
    price: 152.99,
    pic: "http://www.placecage.com/200/200",
    category: "Desk" },
  { title: "Wooden Desk",
    description: "Made with sustainable materials like natural bamboo and recycled aluminum, NextDesk features a state-of-the-art microprocessor-controlled lift system that moves the desk surface up and down in seconds. Transitions are so smooth you won’t ripple your morning cup of coffee and so quiet that no one will notice.",
    price: 101.25,
    pic: "http://www.placecage.com/200/200",
    category: "Desk" },
  { title: "Office Chair",
    description: "Made with sustainable materials like natural bamboo and recycled aluminum, NextDesk features a state-of-the-art microprocessor-controlled lift system that moves the desk surface up and down in seconds. Transitions are so smooth you won’t ripple your morning cup of coffee and so quiet that no one will notice.",
    price: 80.75,
    pic: "http://www.placecage.com/200/200",
    category: "Chair" },
  { title: "Small Ikea Chair",
    description: "Made with sustainable materials like natural bamboo and recycled aluminum, NextDesk features a state-of-the-art microprocessor-controlled lift system that moves the desk surface up and down in seconds. Transitions are so smooth you won’t ripple your morning cup of coffee and so quiet that no one will notice.",
    price: 61.99,
    pic: "http://www.placecage.com/200/200",
    category: "Chair" },
  { title: "Armchair",
    description: "Made with sustainable materials like natural bamboo and recycled aluminum, NextDesk features a state-of-the-art microprocessor-controlled lift system that moves the desk surface up and down in seconds. Transitions are so smooth you won’t ripple your morning cup of coffee and so quiet that no one will notice.",
    price: 75.00,
    pic: "http://www.placecage.com/200/200",
    category: "Chair" }
]

if Product.all.count == 0

  products.each do |product|
    p = Product.new
    p.title = product[:title]
    p.description = product[:description]
    p.price = product[:price]
    p.pic = product[:pic]
    p.category = product[:category]
    p.save
  end

end
