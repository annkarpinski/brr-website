# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.create!(:first_name => 'John',
              :middle_name => 'Joe',
              :last_name => 'Doe',
              :address1 => '123 Main Street',
              :address2 => 'Apt 1',
              :city => 'Boulder',
              :state => 'CO',
              :zip_code => '80301',
              :home_phone => '303-123-4567',
              :mobile_phone => '303-123-7654',
              :email_address => 'john.doe@example.com',
              :gender => 'male',
              :birth_date => '01011980',
              :member_level => '1yr_ind',
              :member_since => '01012000',
              :membership_expires => '01012014',
              :reward_points => '10',
              :can_post => true,
              :admin => false,
              :opt_in => true,
              :password_digest => 'test')
