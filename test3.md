Effactual is a 3D array

[ # Effactual
	[ # Effactual[0]
		[] # Effactual[0][0] -- 0 Effpos
	], 
	
	[ #
		[] # -- 1 Effrad
	], 
	
	[
		[] # -- 2 Effstate
	],
	
		
	[
		[] # -- 3 (last) Efftim
	],
	
]

# in EffectInitiate()
  
	Efftype array of if each rad is 0 and above (some negatives)
	Effrad removes negative after this gets made
	EffradD the detect radius gets increased?
	Effabi [bool, bool, bool] for abilities from Efftime (primes?)
