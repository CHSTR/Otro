class EvioCorreosMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.evio_correos_mailer.contestar.subject
  #
  def contestar(consulta)
  	@consultas = consulta
    mail to: @consultas.correo, subject: "Respuesta"
  end
end
