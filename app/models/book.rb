class Book < ActiveRecord::Base
  attr_accessible :book_name, :readedbook_id

  has_many :readedbooks
  has_many :users, :through=>:readedbooks

  has_many :bookideas
  has_many :users, :through=>:bookideas
end
