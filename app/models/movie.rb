class Movie < ActiveRecord::Base
  private

  def set_session
    session[:ratings] = @all_ratings
    session[:sort] = 'release_date'
  end
end
