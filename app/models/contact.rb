class Contact < MailForm::Base
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate:true
  attribute :nickname,  captcha: true

  def headers
    {
      to: "dianaspieser@gmail.com", # change this to be the email you want sent to
      subject: "Railscoder Contact Form",
      from: "dianaspieser@gmail.com",  # change this to be the email it is coming from
      reply_to: %("#{name}" <#{email}>)
    }
  end
end
