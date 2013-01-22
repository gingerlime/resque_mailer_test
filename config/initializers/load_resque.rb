require 'resque'

# Resque.redis = 'localhost:7379'

Resque::Mailer.excluded_environments = [:test, :cucumber, :development]
ActionMailer::Base.delivery_method = :sendmail

class AsyncMailer < ActionMailer::Base
  include Resque::Mailer
end
