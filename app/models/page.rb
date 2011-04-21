class Page
  include Mongoid::Document
  include Mongoid::Timestamps
    
  field :slug, :type => String
  field :title, :type => String
  
  has_many :posts
  
  validates_presence_of :slug
  validates_presence_of :title
  
  validates_uniqueness_of :slug
end