class Book < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  def author_tokens=(ids)
    self.users_ids = ids.split(",")
  end
end

