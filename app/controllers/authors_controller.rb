class AuthorsController < ApplicationController
  def homepage
   render 'homepage'
  end

  def initiative_page
    render 'initiative_page'
  end

  def author_profiles_page
    
  end

  def musings_page
    render 'musings_page' 
  end
end
