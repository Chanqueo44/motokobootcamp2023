actor {

  var counter:Nat=1;
  
  public func multiply(n : Nat, m : Nat) : async Nat{
    var mult =1;
    mult:= n*m;
    return mult;
  };

  public func volume(n : Nat) : async Nat{
    var vol=1;
    vol:= n*n*n;
    return vol;
  };
  public func hours_to_minutes(n : Nat) : async Nat{
    var min=1;
    min:= n*60;
    return min;
  };

  public func set_counter(n : Nat) : async (){
    counter:=n;
  };

  public func get_counter(): async Nat{
    return counter;
  };

  public func test_divide(n: Nat, m : Nat) :async Bool{
    return m%n==0;
  };

  public func is_even(n : Nat) :async Bool {
    return n%2==0;
  };
};
