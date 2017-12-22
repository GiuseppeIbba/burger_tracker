require_relative('../models/eatery')
require_relative('../models/burger')
require_relative('../models/deal')
require('pry-byebug')


Burger.delete_all()
Eatery.delete_all()
Deal.delete_all()




eatery1 = Eatery.new({'name' => 'The 5 Guys', 'location' => 'Edinburgh'})
eatery1.save
eatery2 = Eatery.new({'name' => 'Burger Paradise', 'location' => 'Edinburgh'})
eatery2.save
eatery3 = Eatery.new({'name' => 'Meat Us Here', 'location' => 'Edinburgh'})
eatery3.save
eatery4 = Eatery.new({'name' => 'The Jumping Pork', 'location' => 'Edinburgh'})
eatery4.save
eatery5 = Eatery.new({'name' => 'Beef & Beer', 'location' => 'Edinburgh'})
eatery5.save
eatery6 = Eatery.new({'name' => 'Burger House', 'location' => 'Edinburgh'})
eatery6.save
eatery7 = Eatery.new({'name' => 'Star Burger', 'location' => 'Edinburgh'})
eatery7.save
eatery8 = Eatery.new({'name' => 'Paninazzo', 'location' => 'Edinburgh'})
eatery8.save
eatery9 = Eatery.new({'name' => 'Oliental Bulgels', 'location' => 'Edinburgh'})
eatery9.save



burger1 = Burger.new({'name' => 'Hamburger', 'price' => '7.5', 'eatery_id' => eatery1.id})
burger1.save
burger2 = Burger.new({'name' => 'Cheeseburger', 'price' => '8.5', 'eatery_id' => eatery1.id}) #
burger2.save
burger3 = Burger.new({'name' => 'Bacon Burger', 'price' => '8.8', 'eatery_id' => eatery1.id})
burger3.save
burger4 = Burger.new({'name' => 'Veggie Burger', 'price' => '7.8', 'eatery_id' => eatery1.id})
burger4.save
burger5 = Burger.new({'name' => 'Bacon Cheeseburger', 'price' => '9.0', 'eatery_id' => eatery1.id}) #
burger5.save
burger6 = Burger.new({'name' => 'Hamburger', 'price' => '7.0', 'eatery_id' => eatery2.id})
burger6.save
burger7 = Burger.new({'name' => 'Cheeseburger', 'price' => '7', 'eatery_id' => eatery2.id})
burger7.save
burger8 = Burger.new({'name' => 'Scramblurger', 'price' => '8.4', 'eatery_id' => eatery2.id})
burger8.save
burger9 = Burger.new({'name' => 'Soy Burger', 'price' => '8.0', 'eatery_id' => eatery2.id})
burger9.save
burger10 = Burger.new({'name' => 'Lamb-oo-rger', 'price' => '12.0', 'eatery_id' => eatery2.id})
burger10.save
burger11 = Burger.new({'name' => 'Hamburger', 'price' => '5.5', 'eatery_id' => eatery3.id})
burger11.save
burger12 = Burger.new({'name' => 'Cheeseburger', 'price' => '6.0', 'eatery_id' => eatery3.id})
burger12.save
burger13 = Burger.new({'name' => 'Chicken Burger', 'price' => '6.0', 'eatery_id' => eatery3.id})
burger13.save
burger14 = Burger.new({'name' => 'Wild Boar Burger', 'price' => '13.5', 'eatery_id' => eatery3.id})
burger14.save
burger15 = Burger.new({'name' => 'Ox Tongue Burger', 'price' => '11.0', 'eatery_id' => eatery3.id})
burger15.save
burger16 = Burger.new({'name' => 'Hamburger', 'price' => '8.0', 'eatery_id' => eatery4.id})
burger16.save
burger17 = Burger.new({'name' => 'Cheeseburger', 'price' => '8.0', 'eatery_id' => eatery4.id})
burger17.save
burger18 = Burger.new({'name' => 'The Fosbury Burger', 'price' => '13.0', 'eatery_id' => eatery4.id})
burger18.save
burger19 = Burger.new({'name' => 'Turkey Burger', 'price' => '6.4', 'eatery_id' => eatery4.id})
burger19.save
burger20 = Burger.new({'name' => 'Cold Smoked Pork Burger', 'price' => '16.3', 'eatery_id' => eatery4.id})
burger20.save
burger21 = Burger.new({'name' => 'Hamburger', 'price' => '5.3', 'eatery_id' => eatery5.id})
burger21.save
burger22 = Burger.new({'name' => 'Cheeseburger', 'price' => '6.8', 'eatery_id' => eatery5.id})
burger22.save
burger23 = Burger.new({'name' => 'Otto Von Burger', 'price' => '8.2', 'eatery_id' => eatery5.id})
burger23.save
burger24 = Burger.new({'name' => 'Mein Lamb Burger', 'price' => '9.6', 'eatery_id' => eatery5.id})
burger24.save
burger25 = Burger.new({'name' => 'Smoked Trout Burger', 'price' => '10.0', 'eatery_id' => eatery5.id})
burger25.save
burger26 = Burger.new({'name' => 'Hamburger', 'price' => '7.7', 'eatery_id' => eatery6.id})
burger26.save
burger27 = Burger.new({'name' => 'Veggie Burger', 'price' => '8.3', 'eatery_id' => eatery6.id})
burger27.save
burger28 = Burger.new({'name' => 'Chicken Burger', 'price' => '7.7', 'eatery_id' => eatery6.id})
burger28.save
burger29 = Burger.new({'name' => 'Uncle Dolan Burger', 'price' => '8.8', 'eatery_id' => eatery6.id})
burger29.save
burger30 = Burger.new({'name' => 'The House', 'price' => '9.4', 'eatery_id' => eatery6.id})
burger30.save
burger31 = Burger.new({'name' => 'Hamburger', 'price' => '6.4', 'eatery_id' => eatery7.id})
burger31.save
burger32 = Burger.new({'name' => 'Cheeseburger', 'price' => '7.0', 'eatery_id' => eatery7.id})
burger32.save
burger33 = Burger.new({'name' => 'Veggie Yoda Burger', 'price' => '9.5', 'eatery_id' => eatery7.id})
burger33.save
burger34 = Burger.new({'name' => 'Darth Burger', 'price' => '11.0', 'eatery_id' => eatery7.id})
burger34.save
burger35 = Burger.new({'name' => 'Obi Wan KeBurger', 'price' => '8.3', 'eatery_id' => eatery7.id})
burger35.save
burger36 = Burger.new({'name' => 'Hamburger', 'price' => '8.5', 'eatery_id' => eatery8.id})
burger36.save
burger37 = Burger.new({'name' => 'Caprese Burger', 'price' => '7.5', 'eatery_id' => eatery8.id})
burger37.save
burger38 = Burger.new({'name' => 'Mediterranean Burger', 'price' => '9.0', 'eatery_id' => eatery8.id})
burger38.save
burger39 = Burger.new({'name' => 'Parmigiana Burger', 'price' => '12.5', 'eatery_id' => eatery8.id})
burger39.save
burger40 = Burger.new({'name' => 'Pizza Burger', 'price' => '11.3', 'eatery_id' => eatery8.id})
burger40.save
burger41 = Burger.new({'name' => 'Hamburger', 'price' => '5.5', 'eatery_id' => eatery9.id})
burger41.save
burger42 = Burger.new({'name' => 'Cheeseburger', 'price' => '5.6', 'eatery_id' => eatery9.id})
burger42.save
burger43 = Burger.new({'name' => 'Cat Burger', 'price' => '4.0', 'eatery_id' => eatery9.id})
burger43.save
burger44 = Burger.new({'name' => 'Dog Burger', 'price' => '4.5', 'eatery_id' => eatery9.id})
burger44.save
burger45 = Burger.new({'name' => 'Rat Burger', 'price' => '3.0', 'eatery_id' => eatery9.id})
burger45.save



deal1 = Deal.new({'label' => 'Cheesy Deal', 'type' => '20', 'day' => 'Monday', 'eatery_id' => eatery1.id, 'burger_id' => burger2.id})
deal1.save
deal2 = Deal.new({'label' => 'Cheesy Deal', 'type' => '20', 'day' => 'Monday', 'eatery_id' => eatery1.id, 'burger_id' => burger5.id})
deal2.save
deal3 = Deal.new({'label' => 'Two for One Tuesday Deal', 'type' => '50', 'day' => 'Tuesday', 'eatery_id' => eatery2.id, 'burger_id' => burger10.id})
deal3.save
deal4 = Deal.new({'label' => 'Two for One Tuesday Deal', 'type' => '50', 'day' => 'Tuesday', 'eatery_id' => eatery2.id, 'burger_id' => burger6.id})
deal4.save
deal5 = Deal.new({'label' => 'Meat the Deal', 'type' => '30', 'day' => 'Sunday', 'eatery_id' => eatery3.id, 'burger_id' => burger13.id})
deal5.save
deal6 = Deal.new({'label' => 'Meat the Deal', 'type' => '30', 'day' => 'Sunday', 'eatery_id' => eatery3.id, 'burger_id' => burger14.id})
deal6.save
deal7 = Deal.new({'label' => 'Jumping 40', 'type' => '40', 'day' => 'Friday', 'eatery_id' => eatery4.id, 'burger_id' => burger15.id})
deal7.save
deal8 = Deal.new({'label' => 'Jumping 40', 'type' => '40', 'day' => 'Friday', 'eatery_id' => eatery4.id, 'burger_id' => burger17.id})
deal8.save
deal9 = Deal.new({'label' => 'Jumping 40', 'type' => '40', 'day' => 'Friday', 'eatery_id' => eatery4.id, 'burger_id' => burger16.id})
deal9.save
deal10 = Deal.new({'label' => 'Deal with it', 'type' => '60', 'day' => 'Wednesday', 'eatery_id' => eatery5.id, 'burger_id' => burger24.id})
deal10.save
deal11 = Deal.new({'label' => 'Deal with it', 'type' => '60', 'day' => 'Wednesday', 'eatery_id' => eatery5.id, 'burger_id' => burger22.id})
deal11.save
deal12= Deal.new({'label' => 'Monday Offer', 'type' => '20', 'day' => 'Monday', 'eatery_id' => eatery6.id, 'burger_id' => burger25.id})
deal12.save
deal13= Deal.new({'label' => 'Monday Offer', 'type' => '20', 'day' => 'Monday', 'eatery_id' => eatery6.id, 'burger_id' => burger26.id})
deal13.save
deal14= Deal.new({'label' => 'May the Fourth (day) be with you', 'type' => '40', 'day' => 'Thursday', 'eatery_id' => eatery7.id, 'burger_id' => burger34.id})
deal14.save
deal15= Deal.new({'label' => 'May the Fourth (day) be with you', 'type' => '40', 'day' => 'Thursday', 'eatery_id' => eatery7.id, 'burger_id' => burger31.id})
deal15.save
deal16 = Deal.new({'label' => 'May the Fourth (day) be with you', 'type' => '40', 'day' => 'Thursday', 'eatery_id' => eatery7.id, 'burger_id' => burger32.id})
deal16.save
deal17 = Deal.new({'label' => 'May the Fourth (day) be with you', 'type' => '40', 'day' => 'Thursday', 'eatery_id' => eatery7.id, 'burger_id' => burger33.id})
deal17.save
deal18 = Deal.new({'label' => 'Italy 33', 'type' => '33', 'day' => 'Tuesday', 'eatery_id' => eatery8.id, 'burger_id' => burger38.id})
deal18.save
deal19 = Deal.new({'label' => 'Italy 33', 'type' => '33', 'day' => 'Tuesday', 'eatery_id' => eatery8.id, 'burger_id' => burger39.id})
deal19.save
deal20 = Deal.new({'label' => 'Rare Deal', 'type' => '15', 'day' => 'Monday', 'eatery_id' => eatery9.id, 'burger_id' => burger42.id})
deal20.save

# 
# binding.pry
# nil
