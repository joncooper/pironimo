class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  
  # See https://github.com/benedikt/mongoid-tree#readme
  include Mongoid::Tree
  include Mongoid::Tree::Ordering   # adds a 'position' field to the model
  include Mongoid::Tree::Traversal
  
  field :body, :type => String
  
  belongs_to :post
  belongs_to :user
  
  validates_presence_of :post
  validates_presence_of :user
end