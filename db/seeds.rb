# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

publisher = Publisher.create!(:name => "Random House")
author = Author.create!(:name => "John Smith")
Book.create!(:name => "The Guide to Stuff", :publisher => publisher, :author => author)
UnfriendlyBook.create!(:name => "The Guide to Stuff", :publisher => publisher, :author => author)
