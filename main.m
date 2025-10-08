#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface SudeditoDelegate : NSObject
{
    NSWindow* window;
}
- (void) applicationDidFinishLaunching: (NSNotification*)not;
- (void) applicationWillFinishLaunching: (NSNotification*)not;
- (void) initAppMenu;
- (void) initWindow;
@end

@implementation SudeditoDelegate
- (void) dealloc {
    RELEASE(window);
    window = nil;
    [super dealloc];
}
- (void) initAppMenu {
    NSMenu* menu;

    menu = AUTORELEASE([NSMenu new]);
    [menu addItemWithTitle: @"Quit"
        action: @selector(terminate:) 
        keyEquivalent: @"q"];

    [NSApp setMainMenu: menu];
}
- (void) initWindow {
    NSRect rect = NSMakeRect(0, 0, 100, 100);
    unsigned int styleMask = NSTitledWindowMask | NSMiniaturizableWindowMask;

    window = [[NSWindow alloc] initWithContentRect: rect
        styleMask: styleMask
        backing: NSBackingStoreBuffered
        defer: NO];
    
    [window setTitle: @"Sudedito"];
}
- (void) applicationDidFinishLaunching: (NSNotification*)not {
    [window makeKeyAndOrderFront: nil];
}
- (void) applicationWillFinishLaunching: (NSNotification*)not {
    [self initAppMenu];
    [self initWindow];
}
@end

int main (int argc, const char** argv) {
    [NSApplication sharedApplication];

    [NSApp setDelegate:[SudeditoDelegate new]];

    return NSApplicationMain(argc, argv);
}
