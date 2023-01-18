1.How much is the current memory capacity of a canister?
Answer: 48GiB.
2.What is the issue with the following code sample?

        actor {
            let counter : Nat = 0;
            public func increment_counter() : async () {
                counter := counter + 1;
            };
        }

Answer:  The counter variable was declared as a "let", which is a static variable and can´t be modified.      


3.What is the issue with the following code sample?
            actor {
                var message : Text = 0;

                public query func change_message(new_message : Text) : async () {
                    message := new_message;
                    return;
                };
  
                public query func see_message() : async Text {
                    return(message);
                };
            }
Answer: The issue is that the var message was declared as a Text, but 0 is an int. For it to be valid, it should be "0". Also, the function "change:message" is a query, so the message will always come back as the first variable.

4.False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.
    Answer:false.