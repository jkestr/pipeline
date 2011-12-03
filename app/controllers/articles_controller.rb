class ArticlesController < ApplicationController

  before_filter :authenticate_user!

  # GET /articles
  # GET /articles.xml
  def index
    @articles = article_all
    respond_with(@articles)
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = article_get(params[:id])
    respond_with(@article)
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = article_new
    respond_with(@article)
  end

  # GET /articles/1/edit
  def edit
    @article = article_get(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = article_create(params[:article])
    @article.save
    respond_with(@article)
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = article_get(params[:id])
    @article.update(params[:article])
    respond_with(@article)
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = article_get(params[:id])
    @article.destroy
    respond_with(@article)
  end

  private

  def article_new(properties={})
    current_user.articles.new(properties)
  end

  def article_all
    current_user.articles
  end

  def article_get(id)
    current_user.articles.get id
  end

  def article_create(params)
    article = article_new(params)
    article.author = current_user
    article
  end

end
