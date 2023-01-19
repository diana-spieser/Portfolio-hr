class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home

    # @review = Review.new
    # @reviews = @evgenium.reviews
    @contact = Contact.new
    @works = Work.all
    @work = Work.new
    # @works = @work.reviews;
    @review = Review.new
    @reviews = Review.all

    # The `geocoded` scope filters only flats with coordinates
  end


end
