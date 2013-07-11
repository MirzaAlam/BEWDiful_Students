require_relative 'lib/story'
require_relative 'lib/story_board'
require_relative 'lib/remote_source'
require_relative 'lib/categories'


def add_remote_stories
	RemoteSource.get.map do |story|
  		StoryBoard.add_story story
  	end
end 

def show_categories
	Category.display
end 

def add_manual_stories
	show_message ("Please enter the story title:") 
	title = get_input 
	show_message ("Which section of the paper would it appear on?")
	section = get_input
	show_message ("What is the stories URL?")
	url = get_input
	show_message ("Decribe the contents of the story")
	abstract = get_input
	show_message ("When was this story published")
	published_date = get_input
	StoryBoard.add_story(Story.new(url, section, title, abstract, published_date))
end 

def show_story_board
	StoryBoard.stories.each do |story|
		show_message story 
	end
end 

def show_message (message)
	puts message
end

def get_input
	gets.chomp
end
    


loop do
	puts "Welcome to the NYTimes top article aggregator."
	puts "Please make a selection"
	puts "Type the number of the option you would like"
	puts "1. Use the NYTimes Api"
	puts "2. Add a story"
	puts "3. Exit"	

	c = gets.to_i
	
	if c == 1
   		show_categories
   		add_remote_stories
   		show_story_board
	elsif c == 2
   		add_manual_stories
   		show_story_board 
	elsif c== 3
		break
 	else
   		show_message "Invalid Selection"
	end
end

#http://api.nytimes.com/svc/mostpopular/v2/"#{resource_type}"/"#{cat}"/30.json?api-key=e82456d31d70bdda520e1c0a0352e603:8:67860687