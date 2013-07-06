ActionMailer::Base.smtp_settings = {
	address: 				"smtp.gmail.com",
	port: 					587,
	domain: 				"gmail.com",
	user_name: 				"readerly.io@gmail.com",
	password: 				"entrepreneur.first",
	authentication: 		"plain",
	enable_starttls_auto: 	true
}