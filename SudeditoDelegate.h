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
