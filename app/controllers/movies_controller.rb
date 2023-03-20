class MoviesController < ApplicationController 

  def index
    @list_of_movies = Movie.all
    render({:template => "movie_templates/movies.html.erb"})
  end

end 
