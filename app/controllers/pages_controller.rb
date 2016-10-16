class PagesController < ApplicationController
  
  
  def index
<<<<<<< HEAD
     if current_user
      redirect_to articles_path
  end
    @articles = Article.last(4)
    
=======
    if current_user
      redirect_to articles_path
    end
    @articles = Article.last(5)
>>>>>>> comments
  end

  def contact
  @contact = Contact.new  
  end

  def about
  end
end