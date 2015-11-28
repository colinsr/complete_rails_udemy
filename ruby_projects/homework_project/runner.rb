require 'pp'
require_relative 'user'

user = User.new('Colin', 'colin@foo.com')

pp user
user.save