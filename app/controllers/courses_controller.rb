class CoursesController < ApplicationController
  def index
    all_countries = Coursera.all

    # If limit is passed in - do nothing
    # Otherwise, generate a random number between 5 and 25

    limit = params[:limit].to_i
    limit = rand(5..25) if limit.zero?
    return nil if limit < 0
    @countries_to_display = all_countries.sample(limit)
    @countries_to_display.sort! { |a, b|  a["name"] <=> b["name"] }
  end
end