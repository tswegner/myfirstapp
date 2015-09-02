class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'tobiassimonwegner@gmail.com',
      :subject => "Contact Message from #{@name}")
  end

  def signup_mail(user)
    @user = user
    mail(:from => 'tobiassimonwegner@gmail.com',
      :to => user.email,
      :subject => "Welcome to THE STORE!")
  end
end
