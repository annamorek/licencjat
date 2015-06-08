class Word < ActiveRecord::Base

  belongs_to :category

  def self.search(query)
  	if query
  		where("name like ?", "%#{query}%")
  	else
  		all
  	end
  end
end