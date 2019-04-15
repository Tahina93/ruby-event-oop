require "pry"


class User

  attr_accessor :email, :age
  @@all_user = []
  
  def initialize(email, age)
  	@email = email
  	@age = age
  	@@all_user << self

  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

  def update_age(age_to_update)
    @age = age_to_update
  end

  def read_age
  	return @age
end

  def self.all
  	return @@all_user
  end

  def self.find_by_email(email)
    @@all_user.each do |user|
    	if user.email == email
    	  puts "Voici l'âge de l'utilisateur : #{user.age}"
    		return user
    	end
    end

  end


puts "end of file"

end