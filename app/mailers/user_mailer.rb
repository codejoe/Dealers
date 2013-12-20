class UserMailer < ActionMailer::Base
  default from: "naufal26.tik@gmail.com", Reply-To: "naufal26.tik@gmail.com"

  def cron_email
    name = 'Name Penerima'
    #email = 'sandinurahmat@gmail.com'

    mail(to: "#{name} < #{email} >", subject: " Friend Test #{rand(1000000)} Welcome to Dealers localhost:3000")
  end

end
