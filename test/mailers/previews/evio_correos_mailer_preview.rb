# Preview all emails at http://localhost:3000/rails/mailers/evio_correos_mailer
class EvioCorreosMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/evio_correos_mailer/contestar
  def contestar
    EvioCorreosMailer.contestar
  end

end
