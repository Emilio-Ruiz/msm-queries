class MoviesController < ApplicationController 

  def index
    
    @list_of_movies = Movie.all
    render({:template => "movie_templates/movies.html.erb"})

  end
  def show 
    movie_id = params.fetch("movie_id")
    @movie=Movie.where(:id =>movie_id ).at(0)
    @director=Director.where(:id=>@movie.director_id ).at(0)

    render({:template => "movie_templates/show.html.erb"})
  end
end 


