require_relative '../lib/strategy/login'

RSpec.describe Login do
	context 'fazendo login via FaceNote' do
		it 'utiliza LoginViaFaceNote para autenticar' do
			parametros =
				{
					metodo: :facenote,
					dados: {
						usuario: 'Gil'
					}
				}
			
			expect(LoginViaFaceNote).to receive(:autenticar)
											.with(parametros[:dados])
			expect(LoginViaZuiter).to receive(:autenticar).never
			Login.com(parametros)
		end
	end
end
