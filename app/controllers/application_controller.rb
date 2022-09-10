class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
    movies = Movies.all
    movies.to_json
  end

  get "/genres" do
    genres = Genres.all
    genres.to_json
  end

  post "/movies/:id" do
    movie = Movie.create(body: params[:body])
    movie.to_json
  end

  patch "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.update(body: params[:body])
    movie.to_json
  end

end
