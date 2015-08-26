class Location < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  validates :address, :presence => true


  has_many :users, :through => :favorites, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
end
