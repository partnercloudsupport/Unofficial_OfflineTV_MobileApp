# Unofficial_OfflineTV_MobileApp

### PLEASE READ 
This app in an unofficial app based on the OfflineTV 
entertainment group. Please note that this app is in 
NO WAY affiliated with OfflineTV, and that app is ment 
to be a personal project to work with API's and Dart's 
Flutter.

### DEVELOPER NOTES
- I have not included the code for any of the API calls as they 
contain sensitive information (keys, etc), but I have kept the
comments explaining the function's purpose / uses.
- This project is still a work in progress


## NEWS ( WIP )
This page connects to the Twitter and Reddit api, downloads 
information (recent tweets and official Reddit posts), 
and compliles all of the information into one readable source. 

![alt text](https://github.com/Tamiyo/Unofficial_OfflineTV_MobileApp/blob/master/resources/news.png)

## YOUTUBE
This page connects to the Youtube api, downloads the 3 most 
recent videos from each user affiliated with OfflineTV, 
and presents the video with it's respective metadeta. 

![alt text](https://github.com/Tamiyo/Unofficial_OfflineTV_MobileApp/blob/master/resources/youtube.png) 
![alt text](https://github.com/Tamiyo/Unofficial_OfflineTV_MobileApp/blob/master/resources/youtube2.png)

## TWITCH ( WIP )
I have run into some problems regarding Flutter and webplayers, 
still doing some research on how to fix this issue 

![alt text](https://github.com/Tamiyo/Unofficial_OfflineTV_MobileApp/blob/master/resources/twitch.png)


## MERCH ( WIP )
Presents the most recent OfflineTV merch. The images are inside 
the folider since they are dynamic, and I am not currently 
very familiar with parsing html. When clicked, the images display 
a sub-menu that shows the price, different options, the title of 
the merchendise, and its description.

![alt text](https://github.com/Tamiyo/Unofficial_OfflineTV_MobileApp/blob/master/resources/merch.png)

## PLANNED UPDATES
- Syncing the app to only perform a GET request when the content has changed to reduce app starttime
- Performing GET requests in the background to reduce app starttime
- Add Reddit information to the news page
- Finish the Twitch.tv page
- Work on integrating a WebAPI system from either the Android and / or the iOS platforms into Flutter
