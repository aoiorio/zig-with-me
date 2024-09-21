const std = @import("std");
const expect = std.testing.expect;

// tests
test addOne {
    try std.testing.expect(addOne(41) == 42);
    try expect(true);
}

// test "example1" {
//     try expect(false);
// }

test "always fails" {
    try expect(true);
}

fn addOne(number: i32) i32 {
    return number + 1;
}
