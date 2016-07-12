User.create(email: 'kevin@cambo.com', password: '1234567', name: 'keven')
User.create(email: 'jim@cambo.com', password: '1234567', name: 'jim')
User.create(email: 'pier@cambo.com', password: '1234567', name: 'pier')
User.create(email: 'peace@cambo.com', password: '1234567', name: 'peace')
User.create(email: 'ping@cambo.com', password: '1234567', name: 'ping')
User.create(email: 'mander@cambo.com', password: '1234567', name: 'mander')
User.create(email: 'chirp@cambo.com', password: '1234567', name: 'chirp')


Category.create(name: 'Random')
Category.create(name: 'Day to day')
Category.create(name: 'Love')
Category.create(name: 'Movies')
Category.create(name: 'TV Shows')
Category.create(name: 'Music')
Category.create(name: 'Fitness')
Category.create(name: 'Other')

Question.create(title: "What was your favorite cartoon?", user_id: 1, category_id:5, choices_attributes:[
	{option: "Pokemon"},
	{option: "Yu-Gi-Oh"},
	{option: "Spongebob Square Pants"}])
Question.create(title: "How many pairs of shoes should you own?", user_id: 2, category_id:2, choices_attributes:[
	{option: "3"},
	{option: "4"},
	{option: "1"}])
Question.create(title: "Is it harder to exercise more or eat healthier?", user_id: 3, category_id:7, choices_attributes:[
	{option: "Exercise"},
	{option: "Eat healthier"},
	{option: "Both"},
	{option: "None!"}])
Question.create(title: "What is one thing that you would like to change about the world?", user_id: 4, category_id:6, choices_attributes:[
	{option: "The Climate"},
	{option: "Poverty"},
	{option: "Seperation of the Countries"}])
Question.create(title: "If you knew you only had 24 hours left to live, what would you do?", user_id: 5, category_id:3, choices_attributes:[
	{option: "Travel to my favorite places"},
	{option: "Eat all I can"},
	{option: "Spend time with my closet friends and family"},
	{option: "Explore new places"}])
Question.create(title: "If you could only eat one food for the rest of your life, what would it be?", user_id: 3, category_id:4, choices_attributes:[
	{option: "Curry"},
	{option: "Pasta"},
	{option: "Chicken with Rice"},
	{option: "STEAK!!"}])
Question.create(title: "Are you a pessimist or an optimist?", user_id: 4, category_id:1, choices_attributes:[
	{option: "Perssimist"},
	{option: "Optimist"}])
