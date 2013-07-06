class RecommendMailer < ActionMailer::Base
  default from: "Readerly"

  def recommendation_email(params)
  	@email = params[:emails]
  	@book = Book.find(params[:id])
  	mail(to: @email, subject: @book.title)
  end
end
