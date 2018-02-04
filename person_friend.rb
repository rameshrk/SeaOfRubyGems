class PersonFriend

  PEOPLE = []
  attr_accessor :hobbies, :friends, :name

  def printFriendsAndHobbies()
    puts name, ":", friends, ":", hobbies
    #working puts @name, ":", @friends, ":", @hobbies

  end


  def printAll()
    PEOPLE.find_all do |person|
      person.friends
    end
  end

  def to_s
    name
  end

  def initialize(name)
    @name=name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_friend(friend)
    @friends << friend
  end

  def has_hobbies(hobby)
    hobbies << hobby
  end

  def self.method_missing(m, *args)
    method = m.to_s
    puts method, "****** In method missing ******", "\n"
    if method.start_with?("all_with_")
      attr = method[9..-1]
      puts attr
      if self.public_method_defined?(attr)
        puts "******"
        PEOPLE.find_all do |person|
          puts person.send(attr).include?(args[0]), "^^^"

          puts "----"
          puts person.send(attr)
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end

end


j = PersonFriend.new("John")
p = PersonFriend.new("Paul")
g = PersonFriend.new("George")
r = PersonFriend.new("Ringo")


j.has_friend(p)
j.has_friend(g)
g.has_friend(p)

j.has_hobbies("Fishing")
j.has_hobbies("Walking")
g.has_hobbies("Flying")

puts j.printFriendsAndHobbies, "\n"
puts p.printFriendsAndHobbies, "\n"
puts g.printFriendsAndHobbies, "\n"
puts r.printFriendsAndHobbies, "\n"


r.hobbies = "Rope climbing"
r.friends = "Juno"
puts r.printFriendsAndHobbies, "\n"


p = PersonFriend.new("Dummy")
puts p.printFriendsAndHobbies
puts "*********"
PersonFriend.all_with_hobbies("Walking")
puts "*********"
# PersonFriend.all_with_children("rolling")

puts PersonFriend::PEOPLE
PersonFriend::PEOPLE << "Jang"
puts
puts PersonFriend::PEOPLE


# PersonFriend.all_with_friends(p).each do |person|
#   puts "#{person.name} is friends with #{p.name}"
# end
#
# Person.all_with_hobbies("rings").each do |person|
#   puts "#{person.name} is into rings"
# end

