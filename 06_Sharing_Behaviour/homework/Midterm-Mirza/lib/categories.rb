class Category
	def show_categories
	puts "Which type of articles you would like to display, type in the number only please:"
	puts "1. Display the most viewed"
	puts "2. Display the most shared"
	puts "3. Display the most emailed"

	choice = gets.to_i

	if choice == 1 
		then resource_type = "mostviewed"
	elsif choice == 2
		then resource_type = "mostshared"
	elsif choice == 3
		then resource_type = "mostemailed"
	else
		puts "Please pick a number"
	end
	
	puts "Which category would you like to read about"
	puts "1. World"
	puts "2. U.S."
	puts "3. N.Y."
	puts "4. Business"
	puts "5. Technology"
	puts "6. Science"
	puts "7. Health"
	puts "8. Sports"
	puts "9. Opinion"
	puts "10. Arts"
	puts "11. Style"
	puts "12. Travel"

	cat = gets.to_i

	if cat == 1
		then section = "World"
	elsif cat == 2
		then section = "U.S."
	elsif cat == 3
		then section = "N.Y."
	elsif cat == 4
		then section = "Business"
	elsif cat == 5
		then section = "Technology"
	elsif cat == 6
		then section = "Science"
	elsif cat == 7
		then section = "Health"
	elsif cat == 8
		then section = "Sports"
	elsif cat == 9
		then section = "Opinion"
	elsif cat == 10
		then section = "Arts"
	elsif cat == 11
		then section = "Style"
	elsif cat == 12
		then section = "Travel"
	else 
		puts "Error, please pick a number"
	
		@@section = section	
		@@resource_type = resource_type
		end
	end
end