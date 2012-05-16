class Group < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :users, :songs
end
