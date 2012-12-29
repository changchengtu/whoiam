class Bookidea < ActiveRecord::Base
  attr_accessible :idea, :book_id, :user_id

  belongs_to :user
  belongs_to :book
end
