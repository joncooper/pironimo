class User
  include Mongoid::Document
  
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attr_accessible :name, :initials, :tip_css,
                  :email, :password, :password_confirmation, :remember_me
  
  field :name, :type => String
  field :initials, :type => String
  field :tip_css, :type => String
  
  has_many :posts
  has_many :comments
  
  validates_presence_of :name
  validates_presence_of :initials
  validates_uniqueness_of :initials, :email, :case_sensitive => false
end