class Article
  include DataMapper::Resource

  property :id, Serial

  property :title, String, :length => 128, :required => true

  belongs_to :author, 'User', :constraint => :skip

  has_tags_on :tags

end
