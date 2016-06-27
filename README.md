
## FLTabBar

Customization center tabBar button.

TabBar button can be touch in prominent shape.

Support Portrait and Landscape.

##Preview Screen Shot

![MacDown Screenshot](https://github.com/FelixLinBH/FLTabBar/blob/master/SimulatorScreen%20Shot.png?raw=true)


##How to use?
###Use Cocoapods 

```
pod "FLTabBar"
```

### Import header file

```
#import "FLTabBarController.h"
#import "FLObject.h"
```

###Use FLObject to create tabBar item.

```
LObject *one = [[FLObject alloc]initWithViewController:[[OneViewController alloc]init] title:@"one" imageName:@"one" selectedImageName:@"one" isCustomImageView:NO];
```

###Use FLTabBarController to create TabBarController with FLObject array.
 
```
FLTabBarController *tabbarController = [[FLTabBarController alloc] initWithTabItems:@[one,two,three,four,five]];
```

###License

MIT.
