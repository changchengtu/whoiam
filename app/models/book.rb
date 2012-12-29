class Book < ActiveRecord::Base
  attr_accessible :book_name, :readedbook_id

  has_many :readedbooks
  belongs_to :readedbook
end
