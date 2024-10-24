MC WEEK ONE(1).
installation of MetaMask extension:
I Visited MetaMask website at https://metamask.io/.
Clicked on the "Download" button on the website.
Chose Chrome as my browser.
Followed the prompts to add MetaMask to my browser.
Then I imported an existing wallet.
Within MetaMask, I switched to Sepolia (test network)

Using Remix IDE:
I also visited the official Remix website at https://remix.ethereum.org/.
Once the website was loaded, I was able to use the Remix IDE directly in my web browser.
Inside the remix iDE, I Created a new file with a .sol extension (SimpleStorage.sol).
I Used Solidity syntax to define my contract's variables, functions, and modifiers.

compiling:
Remix development environments has built-in compilers.
I used 'pragma solidity ^0.8.25' compiler. 
The compiler will highlight any syntax errors or potential issues in the code.

Deploying the Smart Contract:
Connect to a Blockchain: Choose a network (e.g Ropsten Testnet) and connect your wallet (e.g., MetaMask).
Use the deployment feature in the IDE. This will send a transaction to the blockchain to create the contract on the network.
Once deployed, you'll receive the  contract's address, which can be used to interact with it.

Connecting Remix to GitHub  is the major challenge I faced
But I was able to solve it using Gemini AI and also watching some video tutorials on YouTube
I also consulted some experts who gave me guidelines.


MC WEEK TWO(2).
features implimented;

1. storeNumber function:
storeNumber function is to store favoriteNumber
this function takes an integer value and assign it to 'favoriteNumber' variable

2. getFavoriteNumer function: 
getFavoriteNumer function is to return favoriteNumber
this function returns values assigned to it 'favoriteNumber' variable


3. isGreaterThan function:
isGreaterThan function is for comparing a given value to favoritteNumber
this function returns a boolean value (True or False )

4. sumToFavoriteNumber function:
this is a loop function that sum up numbers from 1 to the favorite number 
eg. if favoriteNumber = 4, then sumToFavoriteNumber =(1+2+3+4)= 10.

5. internalFunction:
The function allows functions and state variables to be accessed within the contract they are defined in
and also accessed by contracts that inherit from it.

6. callInternalFunction:
This is a Wrapper function to expose internalFunction
the function Calls the internal function from within the contract

7. externalFunction:
restricts functions to be called only from outside the contract.
They cannot be called internally by the contract itself.

8. testExternalFunction:
 Calls the external function within the contract using 'this'

9. addFavoriteNumber functioon:
This ffuuncttion is a dynamic array to store multiple favorite numbers

10. addPerson function:
This is a struct that helps organize and manage multiple pieces of related data as a single entity

    i) activateContract:
       this function activates contract state
    ii) dactivateContract function:
       function inactivates contract state 
    iii) isActive function:
         thi function to check if contract state is active

challenges:
some challenges I faced were majorly on implementing the structs and enums

solutions:
I had  discussions with some developers 
I prompted chatGPT as well and finally
watched a YouTube video  via this link https://www.youtube.com/watch?v=ef9SrB9cpGU which was my best soluttion





