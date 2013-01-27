class MailPreview < MailView

  def test
    x = {:subject => 'abc'}
    mail = Notifier.test(x)
    x[:subject] = 'xyz'
    mail
  end
end
