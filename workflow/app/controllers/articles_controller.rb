class ArticlesController < ApplicationController
  
  layout "front"
  
  before_filter do @most_viewed = WebPublishedArticle.latest_most_viewed(10) end
  before_filter do @sections = Section.all end
  
  def index
    #@headlines = Revision.latest_headlines.includes(:article)
    @articles = WebPublishedArticle.published
  end
  
  def article
    @section = Section.find_by_url! params[:section]
    #if params[:subsection]
    #  @subsection = @section.subsections.find_by_url! params[:subsection]
    #end
    
    #if @subsection
    #  @article = @subsection.articles.find params[:id]
    #else
      @article = WebPublishedArticle.find_by_article_id params[:id]
    #end
    
    if request.fullpath != view_context.article_path(@article)
      redirect_to view_context.article_path(@article), :status => :moved_permanently
    end    
    # This might fail. If it does, it shouldn't effect the render.
    # There's gotta be logging functionality around here somewhere..
    ViewedArticle.new(:article => @article.article).save
  end
  
  def author
    @author = Author.find params[:author]
    if request.fullpath != view_context.author_path(@author)
      redirect_to view_context.author_path(@author), :status => :moved_permanently
    end
    
    @articles = WebPublishedArticle.find_all_by_author @author
  end
  
  def section
    @section = Section.find_by_url! params[:section]
    
    @articles = WebPublishedArticle.find_all_by_section @section
  end
  
  def subsection
    @section = Section.find_by_url! params[:section]
    @subsection = @section.subsections.find_by_url! params[:subsection]
    
    @articles = WebPublishedArticle.find_all_by_subsection @subsection
    
    render :action => "section"
  end
end
