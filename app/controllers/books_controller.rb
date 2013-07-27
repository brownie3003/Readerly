class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
  end

  # GET /books/new
  def new

  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create

  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
   
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy

  end

  def recommend
    @book = Book.find(params[:id])
  end

  # POST /books/:id/recommend
  def recommended
    RecommendMailer.recommendation_email(params).deliver
    RecommendMailer.discount_email(params).deliver
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params[:book]
    end
end
