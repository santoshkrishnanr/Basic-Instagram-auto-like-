*** Settings ***
Library  SeleniumLibrary
Resource   ../library/login.robot


*** Variables ***
${browser}  ff
${url}  https://www.instagram.com/
@{tag}       \#likes  \#foodie  \#saree    \#love \#indian   \#india     \#instagram   \#photography   \#mumbai   \#follow  \#instagood  \#fashion  \#bollywood  \#like  \#delhi  \#photooftheday  \#likeforlikes  \#bhfyp  \#indianwedding  \#kerala  \#indianarmy  \#indianfood  \#art  \#followforfollowback  \#style  \#model  \#tiktok  \#beautiful  \#memes  \#food  \#maharashtra  \#desi  \#bhfyp   \#nature  \#trending  \#travel  \#picoftheday  \#punjabi  \#army  \#wedding  \#instadaily   \#music  \#indianfashion  \#beauty  \#traditional  \#life  \#modi  \#indianphotography  \#foodporn  \#jaihind  \#bjp  \#narendramodi  \#rajasthan  \#hindu  \#photoshoot  \#photographer  \#pune  \#photo  \#happy  \#fashionblogger     \#dboss  \#maharashtra  \#incredibleindia  \#instagood  \#nammakarnataka  \#kannadamovies  \#official  \#chennai  \#photooftheday  \#darshan  \#focus  \#tiktok  \#kannadadubsmash  \#shivamogga  \#troll  \#indian  \#hassan  \#kannadamusically  \#naturephotography  \#follow  \#hampi  \#karnatakaphotographers  \#hyderabad  \#sandalwoodactress  \#trending  \#picoftheday  \#kannadiga  \#coorg  \#kannadasongs  \#kannadigaru   \#karnataka  \#india  \#kannada  \#bangalore  \#mysore  \#sandalwood  \#bengaluru  \#kerala  \#karnatakatourism  \#photography  \#mangalore  \#travel  \#tamilnadu  \#mumbai  \#yash  \#instagram  \#love  \#udupi  \#nature  \#mandya  \#travelphotography  \#hubli  \#mysuru  \#travelkarnataka  \#banglore  \#ig  \#kicchasudeep  \#kgf  \#delhi  \#bhfyp \#instagood    \#photooftheday    \#beautiful    \#fashion    \#tbt   \#happy    \#cute      \#follow    \#me    \#picoftheday    \#selfie   \#instadaily    \#friends    \#summer    \#girl    \#art    \#fun    \#repost    \#smile    \#nature    \#instalike    \#food    \#style    \#family    \#likeforlike    \#igers    \#fitness    \#nofilter      \#instamood    \#amazing    \#life    \#travel    \#beauty    \#vscocam    \#sun  \#bestoftheday    \#music    \#followforfollow    \#beach    \#instagram    \#photo    \#sky    \#dog   \#pretty    \#swag    \#makeup    \#foodporn    \#hair    \#cat    \#party    \#girls    \#photography    \#cool   \#baby    \#lol    \#tflers    \#model    \#motivation    \#night    \#instapic    \#funny    \#gym    \#healthy    \#yummy    \#hot    \#design    \#black    \#pink    \#flowers      \#blue    \#work    \#instafood    \#fit    \#instacool    \#iphoneonly    \#wedding    \#blackandwhite    \#workout    \#lifestyle    \#handmade    \#followback    \#instafollow    \#home    \#drawing    \#my    \#nyc    \#webstagram  \#sweet    \#instalove    \#technology  \#science    \#iphone    \#ios    \#android    \#mobile    \#video    \#design    \#innovation    \#startups  \#tech    \#cloud    \#gadget    \#instatech    \#electronic    \#device    \#techtrends    \#technews    \#engineering  \#gustavklimt  \#hayez  \#moderart    \#kandinsky   \#oilpainting    \#gioconda    \#thekiss


*** Test Cases ***
Initiating instagram account

    [TAGS]   login insta
    set selenium speed  1 seconds
    login case
   # like photos
    #Click element  xpath://img[@class='s4Iyt']
    sleep  5s

Using random hashtag

    FOR    ${j}    IN RANGE       1  10

        ${i} =    Evaluate    random.choice($tag)    random
        ${Hashtag}  set variable  xpath: //input[contains(@placeholder,'Search')]
        input text  ${Hashtag}  ${i}
        Log to console  starting to like ${i}
        sleep  2s
        Enter_Hashtag
        like_hashtag
        Log to console  liked ${i}
        press keys  xpath: //main[contains(@class,'o64aR')]  ESC
        Click element  xpath://img[@class='s4Iyt']
        sleep  3s

    END

