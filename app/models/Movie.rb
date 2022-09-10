class Movie < ActiveRecord::Base
    belongs_to :genre

    def self.post_with_new_genre
        self.create(name: params[:name], genre: Genre.where(name: params[:genre]).first_or_create, year: params[:year], comment: params[:comment])
    end
end