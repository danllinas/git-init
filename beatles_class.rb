#beatles_class.rb

class Beatles
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  #giving the factory itself the ability to answer. 
  def self.whois(nickname)
    if nickname.downcase.include? "shy"
      puts "The shy one was George."
    elsif nickname.downcase.include? "smart"
      puts "The smart one was John."
    elsif nickname.downcase.include? "cute"
      puts "The cute one was Paul."
    elsif nickname.downcase.include? "quiet"
      puts "The quiet one was Ringo."
    else
      puts "Not a Beatle."
    end
  end    

  #each beatle can answer as if they communicated over wi-fi.
  def whois(nickname)
    if nickname.downcase.include? "shy"
      puts "The shy one was George."
    elsif nickname.downcase.include? "smart"
      puts "The smart one was John."
    elsif nickname.downcase.include? "cute"
      puts "The cute one was Paul."
    elsif nickname.downcase.include? "quiet"
      puts "The quiet one was Ringo."
    else
      puts "Not a Beatle."
    end
  end

end

def test

  #initializing beatle members.
  john = Beatles.new("John")
  paul = Beatles.new("Paul")
  ringo = Beatles.new("Ringo")
  george = Beatles.new("George")


  #ask any beatle who has a certain nickname. They shouuld all be able to answer. 
  john.whois("The smart one")
  ringo.whois("the cute One")
  george.whois("the QuieT one.")
  paul.whois("The shy one?")

  #Let's ask the Beatle Factory who each person is. 
  Beatles.whois("shy")

end

test