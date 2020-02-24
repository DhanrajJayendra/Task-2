/*:
## Task 1
 
### 1.1 Printing your data
 
 Create a function that takes the user's name and then prints it out nicely with a border. It shall do the following:
 
 1. Take a name as an argument
 2. If the name has an even number of characters, use "=" for the top and bottom borders, otherwise use "-".
 3. Print a line above the name, ensuring extra space at the start and end.
 4. Print "| <name> |" where <name> is the name.
 5. Print a line above the name, ensuring extra space at the start and end.
 
 So Nicole would look like:
 
 ==========
| Nicole |
 ==========
 
 Test a few names to check your output.
 */


/*:
 ### 1.2 Packaging your data
 
 Structs are often used as data classes, of which the only purpose is to passively contain data with no business logic associated with the given type.
 
 Extend the previous program and ask extra information from the user. Store the collected information inside of the following data structure. Additionally, implement the validate function with use a `guard` to ensure that the mark is greater than or equal to 0 and less than or equal to 100.
 */

struct CDDMAStudent {
    let firstName: String
    let lastName: String
    let mark: Int?
}

func validate(firstName: String, lastName:String, mark:Int?) -> CDDMAStudent? {
    // TODO
    // 1. add a guard to check if the mark is not optional
    // 2. add a guard to check if the mark is in range
    // 3. wrap the collected data in the struct and return
    return nil
}


/*:
 ## Task 2 Putting it all together
 
 This is a small game in which someone has to throw a dice to determine whether they can enter a game. If they throw a 4, 5 or a 6 they are out, anything else and they
  are allowed to continue.
 
 
 ### 2.1 Design the experiment
 1. You've been provided with a struct for the `Person` and protocols for `Rollable` and `Table`. Use these protocols and complete the implementation.
 2. Implement the method body for `isPersonInGame` function
 */

struct Person {
    let name: String
    var inGame: Bool?
}

protocol Rollable {
    //: - TODO: when rolled, the dice should return a number uniformly chosen between 1 and 6
    func roll () -> Int
}

protocol Table {
    //: - TODO: when initialising the player's inGame status, this should be nil to show that
    // they are not in nor out of the game.
    init(player: Person, dice: Rollable)
    
    var player: Person { get set }
    var dice: Rollable { get }
    
    //: - TODO: by starting the game, set the player's status to a non-nil value.
    func startGame()
}


func isPersonInGame(player: Person) {
    // TODO: if the person is in the game, print "Let's roll 🎲"
    // TODO: if the person is out of the game, print "No dice "
    // TODO: if the person is neither, print "Not sure yet!"
}


/*:
 ### 2.2 Run the experiment
 Using the implementations of the protocols and the functions, write the following program
 
 Your program should do the following
 1. Create a person called "Gamer" who is in the game.
 2. Create a dice extending rollable
 3. Create a Table and put the person at and the dice on the table
 4. Query the state of the person
 - Note:  at this point, the person should be neither be in nor out of the game.
 5. Start the game to see whether the person is in or out.
 6. Query the state of the person again.
 - Note:  at this point, the person should be in or out of the game.
 */

/*:
 ### 2.3 Tweaking the Experiment
 
 Implement the following protocol for `ToughTable` and re-write the program to make use of the new `ToughTable`'s implementation
 
 - Note: The difference of `ToughTable` compared to `EasyTable` should be that,
 * The ToughTable requires the player to roll more than one dice.
 * all dice are rolled at once.
 
 For the person to be in the game, all dice must be show 4, 5 or 6.
 */

protocol ToughTable {
    init(player: Person, dice: [Rollable])
    var person: Person { get set }
    var dice: [Rollable] { get }
    func start()
}

//: - Note: Extra points if made use of higher order functions such as `.map` and `.reduce` to make the `open()` function as *functional* as possible
