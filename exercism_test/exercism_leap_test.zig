const std = @import("std");
const testing = std.testing;

const leap = @import("../exercism/exercism_leap.zig");


pub fn main() !void {
    std.debug.print("Hello, World!", .{});
}

test "year not divisible by 4 in common year" {
    try testing.expect(!leap.isLeapYear(8888));
}