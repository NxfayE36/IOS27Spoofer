#import <UIKit/UIKit.h>

%hook UILabel

- (void)setText:(NSString *)text {
    NSString *realVersion = [[UIDevice currentDevice] systemVersion];

    if ([text isEqualToString:realVersion]) {
        %orig(@"27");
        return;
    }

    %orig(text);
}

%end
