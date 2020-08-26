function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping1();
// in block, in block

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping2();
// in block, out of block



function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);

}
// mysteryScoping3();
// Error, x has already been declared



function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// mysteryScoping4();
// in block, out of block


function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
}
// mysteryScoping5();
// error x already declared

// madlib

function madLib(verb, adjective, noun) {
    return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
}

// console.log(madLib('make','best','guac'));

function isSubstring(searchString, subString) {
    return searchString.includes(subString)
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
    result = []
    for (let i = 0; i < array.length; i++) {
        if ((i % 3 === 0) || (i % 5 === 0)) {
            result.push(i);
        }
        // result.push(i);
    }
    return result
}

// console.log(fizzBuzz([1,2,3,4,5,15]))

function isPrime(number) {
    if (number < 2 ) { return false }

    for (let i = 2; i < number; i++) {
        if (number % i === 0) { return false}
    }
    return true;
}

// console.log(isPrime(4))
// console.log(isPrime(7))

function sumofNPrimes(n) {
    total = 0;
    numprimes = 0;

    for (let i = 2; numprimes < n; i++) {
        if (isPrime(i)) {
            total += i
            numprimes += 1
        }
    }
    return total;
}

// console.log(sumofNPrimes(0))
// console.log(sumofNPrimes(1))
// console.log(sumofNPrimes(4))