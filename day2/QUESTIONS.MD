    1.Who controls the ledger canister?
        Answer: The Network Nervous System controls the ledger canister
    2.What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?
        Answer: The Subnet is: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe . There are 16 nodes running this subnet
    3.I have a neuron with 10 ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
        Answer: The expected voting power is 16,8525
    4.What is wrong with the following code?
        actor {
        let n : Nat = 50;
        let t : Text = "Hello";

        public func convert_to_text(m : Nat) : async Text {
            Nat.toText(m);
        };
        
        }

     Answer: You´re trying to use a function that has not been declared nor Imported (toText()).   

    5.What is wrong with the following code?
        actor {
        var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

        public func show_languages(language : Text) : async [var Text] {
            return (languages);
        };
        
        }
    Answer:The function should not return a mutable array. The array we return should be immutable  and we should remove the "var" from the return type.
    6.What is wrong with the following code?
        actor {
        var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

        public func add_language(new_language: Text) : async [Text] {
            languages := Array.append<Text>(languages, [new_language]);
            return (languages);
        };
        
        }
     Answer: We should use a Buffer instead of an Array, since the append function is deprecated   