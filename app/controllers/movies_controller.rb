class MoviesController < ApplicationController
    def index
        @movies = ["Avengers", "The Matrix", "Star Wars", "Surf's Up"]
    end
end
