module ArticlesHelper

  def article_new(properties={})
    current_user.articles.new(properties)
  end

  def article_create(params)
    article = article_new(params)
    article.author = current_user
    article
  end

  def article_all
    current_user.articles
  end

  def article_get(id)
    current_user.articles.get id
  end


end
