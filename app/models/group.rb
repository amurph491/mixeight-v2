class Group < ActiveRecord::Base
  attr_accessible :name
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  has_many :songs
end
