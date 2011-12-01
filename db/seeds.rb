# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
  password=SecureRandom.base64(4)
  user = User.create(:first_name=>"Bartłomiej", :last_name=>"Rycharski", :email=>"bartlomiej.rycharski@gmail.com",:password=>password,:password_confirmation=>password, :role=>"ADMIN")
  user.send_reset_password_instructions
  user = User.create(:first_name=>"Krzysztof", :last_name=>"Streflik", :email=>"streflik@gmail.com",:password=>password,:password_confirmation=>password, :role=>"ADMIN")
  user.send_reset_password_instructions