class PagesController < ApplicationController
  before_filter :authenticate, :except => :show
  
  active_scaffold :page do |config|
		config.list.columns.exclude :created_at, :updated_at
	end
	
	def show
	  @page = Page.find_by_permalink(params[:permalink]);
	  @meta_title = @page.meta_title
	  @meta_keywords = @page.meta_keywords
	  @meta_description = @page.meta_description
	  if(@page.nil?)
	    redirect_to "/404.html"
	  end
  end
end
