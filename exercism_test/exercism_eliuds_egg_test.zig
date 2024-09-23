const std = @import("std");
const testing = std.testing;

const eliuds = @import("exercism").eliuds;

test "0 eggs" {
    const expected: usize = 0;
    const actual = eliuds.eggCount(0);
    try testing.expectEqual(expected, actual);
}

test "1 egg" {
    const expected: usize = 1;
    const actual = eliuds.eggCount(16);
    // std.debug.print(actual, .{});
    try testing.expectEqual(expected, actual);
}

test "4 eggs" {
    const expected: usize = 4;
    const actual = eliuds.eggCount(89);
    try testing.expectEqual(expected, actual);
}

test "13 eggs" {
    const expected: usize = 13;
    const actual = eliuds.eggCount(2000000000);
    try testing.expectEqual(expected, actual);
}