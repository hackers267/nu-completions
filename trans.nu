export extern "main" [
-V #Print version and exit.
# -version #Print version and exit.
-H
    #Print help message and exit.
 # -help   #Print help message and exit.
-M
    #Show man page and exit.
 #(-man)   #Show man page and exit.
-T
    #Print reference table of languages (in endonyms) and codes, and exit.
 # (-reference)   #Print reference table of languages (in endonyms) and codes, and exit.
-R
    #Print reference table of languages (in English names) and codes, and exit.
 # (-reference-english)   #Print reference table of languages (in English names) and codes, and exit.
-S
    #List available translation engines and exit.
 # (-list-engines)   #List available translation engines and exit.
-list-languages
    #List all languages (in endonyms) and exit.
-list-languages-english
    #List all languages (in English names) and exit.
-list-codes
    #List all codes and exit.
-list-all
    #List all languages (endonyms and English names) and codes, and exit.
-L
    #Print details of languages and exit.
 # (-linguist)   #Print details of languages and exit.
-U
    #Check for upgrade of this program.
 # (-upgrade)   #Check for upgrade of this program.
-e
    #Specify the translation engine to use.
 # (-engine)   #Specify the translation engine to use.
-verbose
    #Verbose mode. (default)
-b
    #Brief mode.
 # (-brief)   #Brief mode.
-d
    #Dictionary mode.
 # (-dictionary)   #Dictionary mode.
-identify
    #Language identification.
-show-original
    #Show original text or not.
-show-original-phonetics
    #Show phonetic notation of original text or not.
-show-translation
    #Show translation or not.
-show-translation-phonetics
    #Show phonetic notation of translation or not.
-show-prompt-message
    #Show prompt message or not.
-show-languages
    #Show source and target languages or not.
-show-original-dictionary
    #Show dictionary entry of original text or not.
-show-dictionary
    #Show dictionary entry of translation or not.
-show-alternatives
    #Show alternative translations or not.
-w
    #Specify the screen width for padding.
 # (-width)   #Specify the screen width for padding.
-indent
    #Specify the size of indent (number of spaces).
-theme
    #Specify the theme to use.
-no-theme
    #Do not use any other theme than default.
-no-ansi
    #Do not use ANSI escape codes.
-no-autocorrect
    #Do not autocorrect. (if defaulted by the translation engine)
-no-bidi
    #Do not convert bidirectional texts.
-bidi
    #Always convert bidirectional texts.
-no-warn
    #Do not write warning messages to stderr.
-dump
    #Print raw API response instead.
-p
    #Listen to the translation.
 # (-play)   #Listen to the translation.
-speak
    #Listen to the original text.
-n
    #Specify the narrator(and listen to the translation.)
 # (-narrator)   #Specify the narrator(and listen to the translation.)
-player
    #Specify the audio player to use, and listen to the translation.
-no-play
    #Do not listen to the translation.
-no-translate
    #Do not translate anything when using -speak.
-download-audio
    #Download the audio to the current directory.
-download-audio-as 
    #Download the audio to the specified file.
-v
    #View the translation in a terminal pager.
 # (-view)   #View the translation in a terminal pager.
-pager 
    #Specify the terminal pager to use, and view the translation.
-no-view
    #Do not view the translation in a terminal pager.
 # (-no-pager)   #Do not view the translation in a terminal pager.
-browser 
    #Specify the web browser to use.
-no-browser
    #Do not open the web browser.
-x
    #Use HTTP proxy on given port.
 # (-proxy)   #Use HTTP proxy on given port.
-u
    #Specify the User-Agent to identify as.
 # (-user-agent)   #Specify the User-Agent to identify as.
-4, -ipv4, -inet4-only
    #Connect only to IPv4 addresses.
-6, -ipv6, -inet6-only
    #Connect only to IPv6 addresses.
-I, -interactive, -shell
    #Start an interactive shell.
-E
    #Start the GNU Emacs front-end for an interactive shell.
 # (-emacs)   #Start the GNU Emacs front-end for an interactive shell.
-no-rlwrap
    #Do not invoke rlwrap when starting an interactive shell.
-i
    #Specify the input file.
 # (-input)   #Specify the input file.
-o
    #Specify the output file.
 # (-output)   #Specify the output file.
-hl
    #Specify the host (interface) language.
 # (-host)   #Specify the host (interface) language.
-s, -sl, -source, -from
    #Specify the source language(s), joined by '+'.
-t, -tl, -target, -to
    #Specify the target language(s), joined by '+'.
-j
    #Treat all arguments as one single sentence.
 # (-join-sentence)   #Treat all arguments as one single sentence.
-no-init
    #Do not load any initialization script.

]
