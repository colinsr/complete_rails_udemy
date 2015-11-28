module Destructable
  def destroy(an_object)
    puts "I will destory the object here."
  end
end

class User
  include Destructable
  
  attr_accessor :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  def run
    puts "Hey I'm running"
  end
  
  def self.identify
    puts "I am a user."
  end
  
end

class Buyer < User
  def run
    puts "I'm running from the buyer class"
  end
end

class Seller < User
end

class Admin < User
end

user = User.new('Colin', 'test@foo.com')
puts user.name
user.name = "Bill"
puts user.name
user.destroy("myname")

buyer = Buyer.new("Craig", 'craig@foo.com')
buyer.run
seller = Seller.new("seller", 'seller@foo.com')
seller.run
admin = Admin.new("admin", 'admin@foo.com')
admin.run

User.identify