def chocolate_feast n, c, m

	wrappers = (n/c).floor
	ate = wrappers

	while wrappers >= m
		adit_pieces = (wrappers / m).floor

		remain = wrappers - adit_pieces * m

		ate = ate + adit_pieces

		remain = remain + adit_pieces

		wrappers = remain
	end
	
	ate
end