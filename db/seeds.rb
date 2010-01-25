# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Page.create(:permalink => 'index', :header => 'Home Page', :body => "<p>This is the home page</p>", :meta_title => 'Home Page', :meta_keywords => "home page, keywords go here", :meta_description => "home page description", :name => 'Home')
Page.create(:permalink => 'contact', :header => 'Contact', :body => "<p><a href='mailto:webmaster@site.net'>email webmaster</a></p>", :meta_title => 'Contact', :meta_keywords => "contact page, keywords go here", :meta_description => "contact page description", :name => 'Contact')