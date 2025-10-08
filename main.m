#import <AppKit/AppKit.h>
#import "SudeditoDelegate.h"

int main (int argc, const char** argv) {
    [NSApplication sharedApplication];

    [NSApp setDelegate:[SudeditoDelegate new]];

    return NSApplicationMain(argc, argv);
}
