//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSMutableArray *names = [NSMutableArray new];
    
    NSDictionary *iceCreamByName = @{   @"Joe"      : @"Peanut Butter and Chocolate" ,
                                        @"Tim"      : @"Natural Vanilla"             ,
                                        @"Sophie"   : @"Mexican Chocolate"           ,
                                        @"Deniz"    : @"Natural Vanilla"             ,
                                        @"Tom"      : @"Mexican Chocolate"           ,
                                        @"Jim"      : @"Natural Vanilla"             ,
                                        @"Mark"     : @"Cookies 'n Cream"           };
    
    for(NSString *key in [iceCreamByName allKeys]) {
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            [names addObject:key];
        }
    }
    return names;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *countsByIceCream = [[NSMutableDictionary alloc] init];
    
    NSArray *flavors = [iceCreamByName allValues];
    
    
    for (NSString *iceCream in flavors){
        
            NSArray *namesToCount = [self namesForIceCream:iceCream];
        
            NSInteger countedNames = [namesToCount count];
        
            NSNumber *personsPerFlavor = @(countedNames);
        
            [countsByIceCream setObject:personsPerFlavor forKey:iceCream];
    
        }
  
    return countsByIceCream;
    

}
@end
