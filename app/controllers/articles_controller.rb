class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /articles
  # GET /articles.json
  def index
<<<<<<< HEAD
    @articles = Article.paginate(page: params[:page], per_page: 4) 
    @last4 = Article.last(4)
    
=======
    @articles = Article.all
>>>>>>> association
  end

  # GET /articles/1
  # GET /articles/1.json
 

  # GET /articles/new
  def new
<<<<<<< HEAD
    @articles = current_user.articles.build
=======
     @articles = current_user.articles.build
>>>>>>> association
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @articles = current_user.articles.build(article_params)

    respond_to do |format|
      if @articles.save
        format.html { redirect_to @articles, notice: 'Article was successfully created.' }
<<<<<<< HEAD
        format.json { render :show, status: :created, location: @articles }
=======
        format.json { render :show, status: :created, location: @article }
>>>>>>> association
      else
        format.html { render :new }
        format.json { render json: @articles.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @articles.update(article_params)
        format.html { redirect_to @articles, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @articles }
      else
        format.html { render :edit }
        format.json { render json: @articles.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @articles.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @articles = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :body)
    end
end