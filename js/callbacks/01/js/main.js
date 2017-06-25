// --------------------------------------------------
// INSTRUCTIONS
// --------------------------------------------------
/*
- Before You Start:
	- Open the `index.html` file in a browser (preferably Google Chrome).
	- Open the JavaScript console.
	- Ensure that information is being logged to the console.
- To Start:
 	- Read through the questions included below.
	- Check out the example question and its solution.
	- Answer and test each question before moving on to the next one.
- To Test:
	- Open the `index.html` file and JavaScript console in browser.
	- Make sure that your solutions are being logged out.
	- Make sure that there are no errors.
- Hints:
	- You will need to use the following Array methods:
		- .filter()
		- .map()
		- .reduce()
		- .sort()
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
	Don't forget that 'purchases' can also be made in 'cash'!
*/
var numCashSales;

console.log( 'The total number of cash sales is:', numCashSales );


// --------------------------------------------------
// QUESTION 04
// --------------------------------------------------
/*
	Calculate the total number of 'credit' 'purchases'.

	HINT(S):
	Make sure to exclude any 'sales' made by 'credit'!
*/
var numCreditPurchases;

console.log( 'The total number of credit purchases is:', numCreditPurchases );


// --------------------------------------------------
// QUESTION 05
// --------------------------------------------------
/*
	Create an array that includes all of 'unique vendors' which appear in the transactions data set.
	eg. `[ 'vendor one', 'vendor two', ... ]

	HINT(S):
	Not all transactions have a 'vendor'!
	The assembled array should be made up of strings, not full `transaction` objects.
	The name of each vendor should appear only once (eg. no duplicates).
*/
var uniqueVendors;

console.log( 'The unique vendors are:', uniqueVendors );


// --------------------------------------------------
// QUESTION 06
// --------------------------------------------------
/*
	UNIQUE CUSTOMERS ARRAY /// TEMP
*/
var uniqueCustomers;

console.log( 'The unique customers are:', uniqueCustomers );


// --------------------------------------------------
// QUESTION 07
// --------------------------------------------------
/*
	'BIG SPENDERS' ARRAY /// TEMP
*/
var bigSpenders;

console.log( 'The "big spenders" are:', bigSpenders );


// --------------------------------------------------
// QUESTION 08
// --------------------------------------------------
/*
	TOTAL AMOUNT SOLD (SUM) /// TEMP
*/
var sumSales;

console.log( 'The sum of all sales is:', sumSales );


// --------------------------------------------------
// QUESTION 09
// --------------------------------------------------
/*
	TOTAL CAD PURCHASES
*/
var sumPurchases;

console.log( 'The sum of all purhcases is:', sumPurchases );


// --------------------------------------------------
// QUESTION 10
// --------------------------------------------------
/*
	NET PROFIT /// TEMP
*/
var netProfit;

console.log( 'The net profit is:', netProfit );


// --------------------------------------------------
// QUESTION 11
// --------------------------------------------------
/*
	MOST ITEMS SOLD AS PART OF A SINGLE TRANSACTION /// TEMP
*/
var mostItems;

console.log( 'The most items sold in a single transaction is:', mostItems );


// --------------------------------------------------
// QUESTION 12
// --------------------------------------------------
/*
	FEWEST ITEMS SOLD AS PART OF A SINGLE TRANSACTION /// TEMP
*/
var fewestItems;

console.log( 'The fewest items sold in a single transaction is:', fewestItems );
