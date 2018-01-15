require 'strategy/login_via_face_note'

RSpec.describe LoginViaFaceNote do
	
	it 'retorna sucesso para o usuário Gil' do
		parametros = {
			usuario: 'Gil'
		}
		
		resposta = LoginViaFaceNote.autenticar(parametros)
		expect(resposta[:status]).to be true
		expect(resposta[:mensagem]).to eq('login com sucesso')
	end
end