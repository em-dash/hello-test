pub fn main() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Hello, test world!\n", .{});

    try bw.flush(); // Don't forget to flush!
}

const std = @import("std");
