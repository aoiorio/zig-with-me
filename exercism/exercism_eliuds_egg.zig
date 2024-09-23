const std = @import("std");
const ArrayList = std.ArrayList;
const testing = std.testing;
const expect = testing.expect;

// first, number devided by 2 and then I will get the remainder
// second, count the number of 1

pub fn eggCount(number: usize) !usize {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
	const allocator = gpa.allocator();
	var int: usize = number;
	var result: usize = 0;

    var remainder: usize = 0;
    var binaries = std.ArrayList(usize).init(allocator);
    defer binaries.deinit(); // 解放

    while (int != 0) {
        remainder = int % 2;
        try binaries.append(remainder);
        int /= 2;
    }
    
    for (binaries.items) |item| {
        if (item == 1) {
            result += 1;
        }
    }

    return result;
}
