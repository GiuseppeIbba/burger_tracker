require_relative('../models/eatery')
require_relative('../models/burger')
require_relative('../models/deal')


eatery1 = Eatery.new({'name' => 'The 5 Guys', 'location' => 'Edinburgh'})
eatery2 = Eatery.new({'name' => 'Burger Paradise', 'location' => 'Edinburgh'})
eatery3 = Eatery.new({'name' => 'Meat us here', 'location' => 'Edinburgh'})
eatery4 = Eatery.new({'name' => 'The jumping pork', 'location' => 'Edinburgh'})
eatery5 = Eatery.new({'name' => 'Beef and beer', 'location' => 'Edinburgh'})
eatery6 = Eatery.new({'name' => 'Burger house', 'location' => 'Edinburgh'})
eatery7 = Eatery.new({'name' => 'Burger 4 u', 'location' => 'Edinburgh'})
eatery8 = Eatery.new({'name' => 'Paninazzo', 'location' => 'Edinburgh'})
eatery9 = Eatery.new({'name' => 'Old western', 'location' => 'Edinburgh'})

eatery1 .save
eatery2 .save
eatery3 .save
eatery4 .save
eatery5 .save
eatery6 .save
eatery7 .save
eatery8 .save
eatery9 .save


eatery2 .name = 'Burger Hell'
eatery2.update
eatery3 .name = 'Fuck you we are Vegan'
eatery3.update



# burger1 = Burger.new
