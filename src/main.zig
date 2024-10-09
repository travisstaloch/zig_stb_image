const std = @import("std");

const math = @cImport({
    @cInclude("main.c");
});

pub fn main() !void {
    std.debug.print("hello world", .{});

    var width: c_int = undefined;
    var height: c_int = undefined;
    var channels: c_int = undefined;
    const result = math.stbi_load("test.png", &width, &height, &channels, 4);
    if (result != 0) {
        std.debug.print("everything good, these are the data x: {d}, y: {d}, channels: {d}", .{ width, height, channels });
        return;
    }
    std.debug.print("something went wrong", .{});
}
