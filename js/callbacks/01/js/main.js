// --------------------------------------------------
// INSTRUCTIONS
// --------------------------------------------------
/*
BEFORE YOU START
------------------------------
- Open the `index.html` file in a browser (preferably Google Chrome).
- Open the JavaScript console.
- Ensure that information is being logged to the console.

TO START
------------------------------
- Read through the questions included below.
- Check out the example question and its solution.
- Check out the structure of the `transactions` objects in the 'data.js' file.
- Answer and test each question before moving on to the next one.

TO TEST
------------------------------
- Open the `index.html` file and JavaScript console in browser.
- Make sure that your solutions are being logged out.
- Make sure that there are no errors.

HINTS
------------------------------
- Each solution requires you to operate on the contents of the `transactions` array.
- At the very least, you will need to use the following Array methods:
	- .filter()
	- .map()
	- .reduce()
	- .sort()
- Documentation for these methods (and the other 'Array Extras') can be found here:
	- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#Iteration_methods
*/


// --------------------------------------------------
// EXAMPLE QUESTION
// --------------------------------------------------
/*
	Calculate the total number of transactions.
*/
var totalTransactions = transactions.length;

console.log( 'The total number of transactions is:', totalTransactions );


// --------------------------------------------------
// QUESTION 01
// --------------------------------------------------
/*
	Calculate the total number of 'sales'.

	HINT(S):
	- Not all transactions are 'sales'.
*/
var numSales;

console.log( 'The total number of sales is:', numSales );


// --------------------------------------------------
// QUESTION 02
// --------------------------------------------------
/*
	Calculate the total number of 'purchases'.
*/
var numPurchases;

console.log( 'The total number of purchases is:', numPurchases );


// --------------------------------------------------
// QUESTION 03
// --------------------------------------------------
/*
	Calculate the total number of 'cash' 'sales'.

	HINT(S):
	- Don't forget that 'purchases' can also be made in 'cash'!
*/
var numCashSales;

console.log( 'The total number of cash sales is:', numCashSales );


// --------------------------------------------------
// QUESTION 04
// --------------------------------------------------
/*
	Calculate the total number of 'credit' 'purchases'.

	HINT(S):
	- Make sure to exclude any 'sales' made by 'credit'!
*/
var numCreditPurchases;

console.log( 'The total number of credit purchases is:', numCreditPurchases );


// --------------------------------------------------
// QUESTION 05
// --------------------------------------------------
/*
	Create an array that includes all of vendors which appear in the transactions data set.
	eg. `[ 'vendor one', 'vendor two', ... ]

	HINT(S):
	- Not all transactions have a 'vendor'!
	- The assembled array should be made up of strings, not full `transaction` objects.
	- This array is allowed to contain duplicate values.
*/
var uniqueVendors;

console.log( 'The unique vendors are:', uniqueVendors );


// --------------------------------------------------
// QUESTION 06
// --------------------------------------------------
/*
	Create an array that includes all of *unique* customers which appear in the transactions data set.
	eg. `[ 'customer one', 'customer two', ... ]

	HINT(S):
	- Not all transactions have a 'customer'!
	- The assembled array should be made up of strings, not full `transaction` objects.
	- Make sure that the resulting array *does not* include any duplicates.
*/
var uniqueCustomers;

console.log( 'The unique customers are:', uniqueCustomers );


// --------------------------------------------------
// QUESTION 07
// --------------------------------------------------
/*
	Create an array of information about the 'sale' transactions which include 5 or more items.

	The array should resemble the following:
	[ { name: 'Customer Name', numItems: 5 }, ... ]

	HINT(S):
	- There may be more than 1 'sale' that includes 5 or more items.
	- Individual transactions do not have either `name` or `numItems` properties, we'll have to add them to the output.
*/
var bigSpenders;

console.log( 'The "big spenders" are:', bigSpenders );


// --------------------------------------------------
// QUESTION 08
// --------------------------------------------------
/*
	Calculate the sum of the *first* 'sale' transaction.

	HINT(S):
	- Transactions don't have 'prices', but their 'items' do!
*/
var sumSales;

console.log( 'The sum of all sales is:', sumSales );


// --------------------------------------------------
// QUESTION 09
// --------------------------------------------------
/*
	Calculate the sum of *all* 'purchase' transactions.

	HINT(S):
	- Your solution to 'QUESTION 08' is a good starting point!
	- Make sure to include 'price' information from *all* purchases.
*/

var sumPurchases;

console.log( 'The sum of all purhcases is:', sumPurchases );


// --------------------------------------------------
// QUESTION 10
// --------------------------------------------------
/*
	Calculate the company's net profit.

	This number will be positive if the sum of the sales is greater than the amount spent on purchases.

	Otherwise, this number will be negative.

	HINT(S):
	- Unlike 'QUESTION 08' and 'QUESTION 09', here we're interested in both 'sale' and 'purchase' transactions.
*/
var netProfit;

console.log( 'The net profit is:', netProfit );


// --------------------------------------------------
// QUESTION 11
// --------------------------------------------------
/*
	Calculate the most items sold as part of single transaction.

	HINTS:
	- The result of this calculation should be a number (not an array, object, or other data type).
*/
var mostItems;

console.log( 'The most items sold in a single transaction is:', mostItems );


// --------------------------------------------------
// QUESTION 12
// --------------------------------------------------
/*
	Calculate the sum of the 'purchase' with the fewest items.
*/
var sumOfSmallestPurchase;

console.log( 'The sum of the smallest purchase is:', sumOfSmallestPurchase );
