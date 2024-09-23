const std = @import("std");
const leap = @import("exercism").leap;

const testing = std.testing;


pub fn main() !void {
    std.debug.print("Hello, World!", .{});
}

test "year not divisible by 4 in common year" {
    try testing.expect(!leap.isLeapYear(1900));
}
