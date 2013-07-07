class RecommendMailer < ActionMailer::Base
  default from: "readerly.io@gmail.com"

  def recommendation_email(params)
  	@emails = params[:emails]
  	@name = params[:name]
  	@book = Book.find(params[:id])
  	## BCC is a hack, but it works
  	mail(bcc: @emails, subject: @book.title)
  end
end
