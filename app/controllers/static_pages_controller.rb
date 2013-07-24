class StaticPagesController < ApplicationController
  def home
  	@books = Book.all
  	random_record = rand(Book.count)
  	@random_book = Book.first(offset: random_record)
  end

  def malice
  end

  def gonegirl
  end
end
