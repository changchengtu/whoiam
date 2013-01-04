class Bookidea < ActiveRecord::Base
  attr_accessible :idea, :book_id, :user_id, :process

  belongs_to :user
  belongs_to :book
end
