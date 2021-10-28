class User < ActiveRecord::Base
  has_and_belongs_to_many :books
  
  def author_tokens=(ids)
    self.book_ids = ids.split(",")
  end
end



