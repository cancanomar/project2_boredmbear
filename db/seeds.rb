Idea.destroy_all
Category.destroy_all

inside = Category.create(name: "Inside", bear_img: "bear_introvert.jpg")
outside = Category.create(name: "Outside", bear_img: "bear_outside.jpg")
food = Category.create(name: "Food", bear_img: "bear_chef.jpg")
friends = Category.create(name: "Friends", bear_img: "bear_group.jpg")
flashy = Category.create(name: "Flashy", bear_img: "bear_flashy.jpg")
crazy = Category.create(name: "Crazy", bear_img: "bear_crazy.jpg")
art = Category.create(name: "Art", bear_img: "bear_art.jpg")

Idea.create(description: "Try a new type of cuisine you never had before.", category: food)
Idea.create(description: "Go vegetarian for a week.", category: food)
Idea.create(description: "Go bowling with your friends. Winner gets to have the losers write a song about him/her.", category: friends)
Idea.create(description: "Draw a picture of your best friend with crayons and then give it to a stranger.", category: art)
Idea.create(description: "Watch the local crew team practice in the river.", category: outside)
Idea.create(description: "Wear a business suit and do pushups. In a Starbucks", category: crazy)
Idea.create(description: "Learn how to make an Old Fashioned.", category: food)
Idea.create(description: "Get Guac with your burrito.", category: flashy)
Idea.create(description: "See a movie in Imax.", category: flashy)
Idea.create(description: "Go to the subway/metro and ride the train all the way down to the end of the line.", category: crazy)
Idea.create(description: "Build a pillow fort.", category: inside)
Idea.create(description: "Wear a helmet to class with a compact mirror duct taped to the front.", category: inside)
