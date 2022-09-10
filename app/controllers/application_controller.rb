class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
    movies = Movies.all.order(:name)
    movies.to_json(inclue: :genres)
  end

  get "/genres" do
    genres = Genres.all.order(:name)
    genres.to_json
  end

  get "/genres/:id" do
    genre = Genre.find(params[:id])
    genre.to_json(include: :movies)
  end

  post "/movie" do
    movie = Movie.post_with_new_genre
    movie.to_json
  end

  patch "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.update(comment: params[:comment])
    movie.to_json
  end

  delete "/movie/:id" do
    movie = Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end

end
