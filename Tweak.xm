#import <UIKit/UIKit.h>

static BOOL IsAboutPage(UIView *view) {
    UIResponder *responder = view;

    while (responder) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            UIViewController *controller = (UIViewController *)responder;
            if ([controller.title isEqualToString:@"About"]) {
                return YES;
            }
        }
        responder = responder.nextResponder;
    }
    return NO;
}

%hook UILabel

- (void)setText:(NSString *)text {
    NSString *realVersion = [[UIDevice currentDevice] systemVersion];

    if ([text isEqualToString:realVersion] && IsAboutPage(self)) {
        %orig(@"27");
        return;
    }

    %orig(text);
}

%end
