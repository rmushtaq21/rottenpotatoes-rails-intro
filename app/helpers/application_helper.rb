module ApplicationHelper
  def selected_column(header)
    if params[:sort].to_s == header
      return 'hilite'
    else
      return 'nil'
    end
  end

  def selected_ratings(ratings)
    puts "sessions are ===> #{session.keys}"
    # unchecked boxes are not sent to the server
    @rated_movies = Array.new
    # list of user's selected rating movies
    ratings.each do |rating|
      @rated_movies.push(Movie.order(session[:sort]).where('rating = ?', rating))
    end
    movies = Array.new
    @rated_movies.each do |record|
      record.each do |movie|
        movies.push(movie)
      end
    end
    @movies = movies
  end
end
