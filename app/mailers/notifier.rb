class Notifier < ActionMailer::Base
  include Resque::Mailer

  default :from => "from@example.com"

  def test(data={})
    data.symbolize_keys!

    Rails.logger.info "sending test mail"
    Rails.logger.info "params: #{data.keys.join(',')}"
    Rails.logger.info ""

    @subject = data[:subject] || "Testing mail"
    mail(:to => "nap@localhost.local",
         :subject => @subject)
  end
end
