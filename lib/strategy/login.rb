require_relative 'login_via_face_note'
require_relative 'login_via_zuiter'

class Login
	def self.com(parametros)
		resposta =
			if parametros[:metodo] == :facenote
				LoginViaFaceNote.autenticar(parametros[:dados])
			elsif parametros[:metodo] == :zuiter
				parametros[:dados][:usuario].downcase!
				LoginViaZuiter.autenticar(parametros[:dados])
			end
	end
end