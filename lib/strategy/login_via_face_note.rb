require_relative 'servico_facenote_login_fake'

class LoginViaFaceNote
	FACE_NOTE_SUCESSO = 200
	FACE_NOTE_REVOCADO = 403
	FACE_NOTE_BLOQUEADO = 408

	def self.autenticar(parametros)
		resposta = ServicoFaceNoteLogin.autenticar(parametros)
		if resposta == FACE_NOTE_SUCESSO
			{ status: true, mensagem: 'login com sucesso' }
		elsif resposta == FACE_NOTE_REVOCADO
			{ status: false, mensagem: 'acesso revocado' }
		elsif resposta = FACE_NOTE_BLOQUEADO
			{ status: false, mensagem: 'aplicação bloqueada' }
		else
			{ status: false, mensagem: 'não foi possivel autenticar' }
		end
	end
end