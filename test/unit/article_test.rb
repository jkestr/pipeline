require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  test "article title is required" do
    article = Article.new
    assert_required(article, :title)
  end
  
  test "article has an author" do
    article = Article.new
    assert_respond_to article, :author
  end
  
  test "setting tags" do
    article = Article.new
    tags = ['cat', 'dog', 'cow']
    
    article.tag_list = tags.join(', ')
    assert_empty article.tag_list - tags
  end
  
end
