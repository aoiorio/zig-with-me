const std = @import("std");
const testing = std.testing;

pub fn squareOfSum(number: usize) usize {
    var sum: usize = 0;
    for (1..number+1) |n| {
        sum += n;
    }
    return sum * sum;
}

pub fn sumOfSquares(number: usize) usize {
    var square_sum: usize = 0;
    for (1..number+1) |n| {
        square_sum += n * n;
    }
    return square_sum;
}

pub fn differenceOfSquares(number: usize) usize {
    const squre_of_sum: usize = squareOfSum(number);
    const sum_of_squares: usize = sumOfSquares(number);
    return squre_of_sum - sum_of_squares;
}


// Great Answer!!! 💡

// pub fn squareOfSum(number: usize) usize {
//     const result = number * (number + 1) / 2;
//     return result * result;
// }
// pub fn sumOfSquares(number: usize) usize {
//     return (number * (number + 1) * (2 * number + 1)) / 6;
// }
// pub fn differenceOfSquares(number: usize) usize {
//     return squareOfSum(number) - sumOfSquares(number);
// }