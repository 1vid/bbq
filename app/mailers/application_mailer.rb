class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.local_email
  layout 'mailer'
end

