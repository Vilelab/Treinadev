#funcoes que implementam operações matemáticas básicas

def soma(primeiro_numero, segundo_numero)
	return primeiro_numero + segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
	return primeiro_numero - segundo_numero
end

def multiplicacao(primeiro_numero, segundo_numero)
	return primeiro_numero * segundo_numero
end
def divisao(primeiro_numero, segundo_numero)
	
	if segundo_numero == 0 then
		return "Opa! Zero como divisor"
	else
		return primeiro_numero / segundo_numero
	end
end
