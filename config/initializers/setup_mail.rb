  ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "google.com",
  :user_name            => "naufal26.tik",
  :password             => "xxx",
  :authentication       => "plain",
  :enable_starttls_auto => true
}