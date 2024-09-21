const std = @import("std");
const expect = std.testing.expect;

pub fn isLeapYear(year: u32) bool {
    if (year % 400 == 0) {
        return true;
    } else if (year % 100 != 0 and year % 4 == 0) {
        return true;
    } else {
        return false;
    }
}
