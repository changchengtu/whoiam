class Readedbook < ActiveRecord::Base
  attr_accessible :book_id, :user_id

  belongs_to :user
  belongs_to :book

  has_one :book
  has_one :user
end
