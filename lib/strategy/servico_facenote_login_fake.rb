class ServicoFaceNoteLogin
	def self.autenticar(dados)
		return 200 if dados[:usuario] == 'Gil'
		404
	end
end