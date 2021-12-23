# Write your code here.
require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badge_messages = []
  attendees.each do |name|
    badge_messages << badge_maker(name)
  end                                                                                                                                                                                             
  badge_messages
end

def assign_rooms(attendees)
  attendees.map.with_index do |name, i|
    "Hello, #{name}! You'll be assigned to room #{i + 1}!"
  end
end

def printer(attendees) 
  batch_badge_creator(attendees).each do |badges|
    puts badges
  end 
  assign_rooms(attendees).each do |rooms| 
    puts rooms
  end  
end