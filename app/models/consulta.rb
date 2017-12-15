class Consulta < ApplicationRecord
after_create :send_mail
private
	def send_mail
		EvioCorreosMailer.contestar(self).deliver_now # o later...
	end
end
