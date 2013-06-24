class StaticPagesController < ApplicationController
  def home
  	@books = Book.all
  end

  def malice
  end
end
