import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";

actor {

	public func average_array(array: [Int]) : async Int {
		var tot: Int = 0;
		for (x in array.vals()) {
			tot += x;
		};
		return tot / array.size();
	};

	public func count_character(t : Text, c : Text) : async Nat {
	    var count: Nat = 0;
		for (char in t.chars()) {
			if (Char.toText(char) == c) {
				count += 1;
			};
		};
    	return count;
	};

	public func factorial(n : Nat) : async Nat {
      	if(n == 0){
      		return 1;
		} else {
			var result : Nat = 1;
			let iter = Iter.range(1, n);
			for(i in iter){
				result := result * i;
			};
			return result;
		}
	};



	public func number_of_words(text : Text) : async Nat {
	    var count: Nat = 0;
		if (text.size() > 0) {
			count += 1;
		};
		for (nw in text.chars()) {
			if (nw == ' ') {
				count += 1;
			};
		};
		return count;
	};

	public func is_on_array(a: [Nat], n: Nat) : async Bool {
		var result : [Nat] = [];
		var i : Nat = 0;
		var treated : HashMap.HashMap<Nat, Nat> = HashMap.HashMap<Nat, Nat>(10, Nat.equal, Hash.hash);
		while(i < a.size()) {
			var j : Nat = i;
			while(j > 0) {
				j -= 1;
				if(a[i]==a[j]) {
				var check = treated.get(a[j]);
				switch(check) {
					case(?value) { 
					j := 0;
					};
					case(_) { 
					result := Array.append<Nat>(result, [a[j]]);
					treated.put(a[j], a[j]);
					j := 0;
					};
				};
				};
			};
			i += 1;
		};
		return result;

	};

	
	public func convert_to_binary(n : Nat) : async Text {
		var result : Text = "";
		var rest : Nat = 0;
		var number : Nat = n;
		loop {
			rest := number % 2;
			number := (number-rest)/2;
			result := Nat.toText(rest) # result;

			if(number < 2) {
				if(number == 1) {
				result := "1" # result;
				};
				return result;
			};
		};
	};
}