class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :slug, :type => String
  field :title, :type => String
  
  embeds_many :posts
  
  validates_presence_of :slug
  validates_presence_of :title
end