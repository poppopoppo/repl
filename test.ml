let rec sigma f e n = 
	if n=e then (f n) 
	else ((f n) + (sigma f e (n-1))) 

let rec h n = 
	match n with
	| 0 -> 1 
	| 1 -> 1 
	| 2 -> 1 
	| 3 -> 2
	| _ ->  
		let h_i i = (h i) * (h (n-i)) in
		sigma h_i 1 (n-1) 
