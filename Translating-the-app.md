Thanks to the translation work of many volunteers this app is available in a multitude of languages.

Translation of the text content of the Wikimedia Commons Android app happens on the [Commons Android App project](https://translatewiki.net/w/i.php?title=Special:Translate&group=commons-android) on [translatewiki.net](https://translatewiki.net). 

# Getting an account on translatewiki

Getting a translator account on translatewiki is a bit cumbersome, but don't worry you will get one soon:

1. Create an account at https://translatewiki.net
2. To get "translate rights", first edit 20 [random keys](https://translatewiki.net/wiki/Special:TranslationStash?)
3. If for any reason that does not work, you can also ask in TranslateWiki's [chat](https://translatewiki.net/wiki/Special:WebChat).

# Internals

## How translations make their way into the app
The translations from the translatewiki project are [periodically committed directly to this project](https://github.com/commons-app/apps-android-commons/commits/master?author=translatewiki) by the translatewiki team and later released with the normal updates to the Play Store. This means that you just need to translate, and your translations will automatically be used by the app from the next [release](https://github.com/commons-app/apps-android-commons/releases). Only languages where more than 25% of the strings have been translated get exported.

Translatewiki is configured to export a certain list of languages to a certain file in this repo. 

This is defined in their [Git repository](https://phabricator.wikimedia.org/diffusion/GTWN/repository/master/) ([Github mirror](https://github.com/wikimedia/translatewiki/)) in [this yaml file](https://phabricator.wikimedia.org/diffusion/GTWN/browse/master/groups/Wikimedia/CommonsAndroid.yaml) ([copy at the Github mirror](https://github.com/wikimedia/translatewiki/blob/master/groups/Wikimedia/CommonsAndroid.yaml)). This file also describes what files contain the original strings in English, adding a new string to one of these files will automatically add it to the list of strings to translate.

## How to add new languages
If your language is not available, please crate a new Github issue asking for it, and we will add it as soon as possible. Thanks!

## Statistics

[Here](https://translatewiki.net/w/i.php?title=Special%3AMessageGroupStats&x=D&group=commons-android&suppressempty=1) is the current rate of translations for each language.