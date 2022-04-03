class ContactForm < MailForm::Base
  attributes :name,  :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message
  

  def headers
    {
        :subject => "Your subject",
        :to => "websitesa95@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end
end