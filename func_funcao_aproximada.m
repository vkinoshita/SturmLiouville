function resultado = func_funcao_aproximada(coef,vj,x)
	#resultado = sum(vj([1:length(coef)]', x)); #'
	resultado = 0;
	for i = 1:length(coef)
		resultado = resultado + coef(i) * vj(i,x);
	end
	#resultado
endfunction
