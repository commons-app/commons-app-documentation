Thanks to the translation work of many volunteers this app is available in a multitude of languages.

Translation of the text content of the Wikimedia Commons Android app happens on the [Commons Android App project](https://translatewiki.net/w/i.php?title=Special:Translate&group=commons-android) on [translatewiki.net](https://translatewiki.net). 

# Getting an account on translatewiki

Getting a translator account on translatewiki is a bit cumbersome, but don't worry you will get one soon:

1. Create an account at https://translatewiki.net
2. To get "translate rights" edit 20 [random keys](https://translatewiki.net/wiki/Special:TranslationStash?)
3. If for any reason that does not work, you can also ask in their [chat](https://translatewiki.net/wiki/Special:WebChat)).

# Internals

## How translations make their way into the app
The translations from the translatewiki project are [periodically committed directly to this project](https://github.com/commons-app/apps-android-commons/commits/master?author=translatewiki) by the translatewiki team and later released with the normal updates to the Play Store. This means that you just need to translate, and your translations will automatically be used by the app from the next [release](https://github.com/commons-app/apps-android-commons/releases).

Translatewiki is configured to export a certain list of languages to a certain file in this repo. 

This is defined in their [Git repository](https://phabricator.wikimedia.org/diffusion/GTWN/repository/master/) ([Github mirror](https://github.com/wikimedia/translatewiki/)) in [this yaml file](https://phabricator.wikimedia.org/diffusion/GTWN/browse/master/groups/Wikimedia/CommonsAndroid.yaml) ([copy at the Github mirror](https://github.com/wikimedia/translatewiki/blob/master/groups/Wikimedia/CommonsAndroid.yaml))

## How to add new languages

???