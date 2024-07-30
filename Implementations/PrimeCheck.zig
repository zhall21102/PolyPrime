const std = @import("std");

pub fn main() !void 
{
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();
    var buff: [50]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buff);
    const alloc = fba.allocator();
    
    try stdout.print("Enter a number\n", .{});

    const input = try stdin.readUntilDelimiterOrEofAlloc(alloc, '\n', 100);
    const a = input.?;
    const num = try std.fmt.parseInt(u128, a, 10);
    
    for (2..std.math.sqrt(num) + 1) |i|
    {
        if (num % i == 0)
        {
            try stdout.print("{} is not prime: {}*{}\n", .{num, i, num / i});
            return;
        }
    }

    try stdout.print("{} is prime\n", .{num});
    return;
}
