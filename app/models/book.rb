class Book < ActiveRecord::Base
  attr_accessible :book_name, :readedbook_id

  has_many :readedbooks
  has_many :readed_books, :through => :readedbooks, :source=>:user


  has_many :bookideas
  has_many :book_ideas, :through => :bookideas, :source=>:user
end
