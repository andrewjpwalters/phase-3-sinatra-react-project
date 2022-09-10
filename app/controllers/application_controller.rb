class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/movies" do
    movies = Movie.all.order(:name)
    movies.to_json
  end

  get "/genres" do
    genres = Genre.all.order(:name)
    genres.to_json
  end

  get "/genres/:id" do
    genre = Genre.find(params[:id])
    genre.to_json(include: :movies)
  end

  get "/movies/:id" do
    genre = Movie.find(params[:id])
    genre.to_json
  end

  post "/movies" do
    movie = Movie.create(name: params[:name], genre: params[:genre_id], year: params[:year], comment: params[:comment])
    movie.to_json
  end

  patch "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.update(comment: params[:comment])
    movie.to_json
  end

  delete "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end

end
