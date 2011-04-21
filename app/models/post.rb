class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body, :type => String

  embedded_in :page
  belongs_to :user
  has_many :comments
  
  validates_presence_of :page
  validates_presence_of :user
end