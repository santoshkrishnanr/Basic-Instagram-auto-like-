# Basic-Instagram-auto-like-
Basic Instagram auto like using robot framework and using Selenium Library

# Project insta_v1
Basic test case to open browser and login to instagram and auto like the first 7 photos/video at particular time.

## Getting Started with installation 

If you already have Python with pip installed, you can just  run:

```
pip install robotframework

```
or refer 

[Documentation](https://robotframework.org/#documentation) - For framework installation:

and.

[Add Library](https://robotframework.org/SeleniumLibrary/) - For adding SeleniumLibrary:
### Tested with
* Linux
* pycharm
* firefox


By editing your password and login id in  [insta_v4 .robot](https://github.com/santoshkrishnanr/Basic-Instagram-auto-like-/blob/master/insta_v4%20.robot)
 Run this in terminal with your file location for testing.
```
robot -d results <file location/insta_v4.robot>.robot
```

 for example ''robot -d results PycharmProjects/instagram_v1/test_Suite/insta_v2.robot''

### Upgraded to like Hashtag
using the file [insta_v2.robot](https://github.com/santoshkrishnanr/Basic-Instagram-auto-like-/blob/hash_tag/insta_v2.robot) and [login.robot](https://github.com/santoshkrishnanr/Basic-Instagram-auto-like-/blob/hash_tag/login.robot)
it selects a random hashtag provided in the list and starts liking the recent updated photos taking some random time to like, mimic human behavior. max/min likes and number of hashtag to be liked can also be entered.



### future work adding scheduler 

by using "at" / corntab or jenkins it can be scheduled to like photos automatically.

:Caution there are many instagram bots, to do similar work. But this was created just for study purpose and make as undetectable as possible and to get rid of instagram addiction. 
