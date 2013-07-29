class RecommendMailer < ActionMailer::Base
  	default from: "readerly.io@gmail.com"

  	def recommendation_email(params)
  		@email1 = params[:email1]
      @email2 = params[:email2]
  		@name = params[:name]
  		@book = Book.find(params[:id])
  		## BCC is a hack, but it works
  		mail(to: "#{@email1}; #{@email2}", bcc: "readerly.io@gmail.com", subject: @book.title + " recommendation from " + @name)
  	end

  	def discount_email(params)
  		@email = params[:email]
  		@name = params[:name]
  		@book = Book.find(params[:id])
      ## Fucking lean/horrible.
  		if @book.title == "Malice"
  			@buylink = "http://readerly.herokuapp.com/buymalice"
  		else
  			@buylink = "http://readerly.herokuapp.com/buygonegirl"
  		end
  		mail(to: @email, subject:@book.title + " discount from Readerly", bcc: "readerly.io@gmail.com")
  	end
end
