class Comment < ActiveRecord::Base
  attr_accessible :body, :name

  validates :body, :presence => true
  validates :name, :presence => true

  belongs_to :post
  
end
