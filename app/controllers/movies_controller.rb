class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        movie_params = params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
        @movie.update(movie_params)
        redirect_to @movie
    end

    def new
        @movie = Movie.new
    end
    
    def create
        @movie = Movie.new(event_params)
        @movie.save
        redirect_to @movie
    end

    private

    def event_params
        params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    end
end
