def chocolate_feast n, c, m

	#inputs with problems
	# 16779 1 5886 ----- getting 16782 expected = 16781
	# 15542 10 750 ---- getting 1557 expected = 1556
	# 857 2 43 ---- getting 486 expected = 438
	wrappers = (n/c).floor
	ate = wrappers

	while wrappers >= m
		adit_pieces = (wrappers / m).floor

		remain = wrappers - adit_pieces * m

		ate = ate + adit_pieces

		remain = remain + (wrappers / m).floor

		wrappers = remain
	end
	
	ate
end