class User < ActiveRecord::Base

devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

validates :username, :presence => true, :uniqueness => true
validates :username, :presence => true


has_many :locations, :through => :favorites, :dependent => :destroy
has_many :favorites, :dependent => :destroy
end
