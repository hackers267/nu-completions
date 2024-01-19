def altermative [] {
  ["Y","N"]
}

def codes [] {
   let all_codes = ^trans --list-codes | split row -r '\n';
   let useable_codes = $all_codes | filter { |x| let r = $x | is-empty; not $r };
   $useable_codes
}

def engine [] {
  
   let all_engines = ^trans --list-engines | split row -r '\n';
   let useable_engines = $all_engines | filter { |x| let r = $x | is-empty; not $r };
   $useable_engines
}

export extern "trans" [
--version(-V)                                          #Print version and exit.
--help(-H)                                             #Print help message and exit.
--man(-M)                                              #Show man page and exit.
--reference(-T)                                        #Print reference table of languages (in endonyms) and codes, and exit.
--reference-english(-R)                                #Print reference table of languages (in English names) and codes, and exit.
--list-engines(-S)                                     #List available translation engines and exit.
--list-languages                                       #List all languages (in endonyms) and exit.
--list-languages-english                               #List all languages (in English names) and exit.
--list-codes                                           #List all codes and exit.
--list-all                                             #List all languages (endonyms and English names) and codes, and exit.
--linguist(-L): string@codes                           #Print details of languages and exit.
--upgrade(-U)                                          #Check for upgrade of this program.
--engine(-e): string@engine                            #Specify the translation engine to use.
--verbose                                              #Verbose mode. (default)
--brief(-b)                                            #Brief mode.
--dictionary(-d)                                       #Dictionary mode.
--identify                                             #Language identification.
--show-original: string@altermative                    #Show original text or not.
--show-original-phonetics: string@altermative          #Show phonetic notation of original text or not.
--show-translation: string@altermative                 #Show translation or not.
--show-translation-phonetics: string@altermative       #Show phonetic notation of translation or not.
--show-prompt-message: string@altermative              #Show prompt message or not.
--show-languages: string@altermative                   #Show source and target languages or not.
--show-original-dictionary: string@altermative         #Show dictionary entry of original text or not.
--show-dictionary: string@altermative                  #Show dictionary entry of translation or not.
--show-alternatives: string@altermative                #Show alternative translations or not.
--width(-w) :number                                    #Specify the screen width for padding.
--indent :number                                       #Specify the size of indent (number of spaces).
--theme :path                                          #Specify the theme to use.
--no-theme                                             #Do not use any other theme than default.
--no-ansi                                              #Do not use ANSI escape codes.
--no-autocorrect                                       #Do not autocorrect. (if defaulted by the translation engine)
--no-bidi                                              #Do not convert bidirectional texts.
--bidi                                                 #Always convert bidirectional texts.
--no-warn                                              #Do not write warning messages to stderr.
--dump                                                 #Print raw API response instead.
--play(-p)                                             #Listen to the translation.
--speak                                                #Listen to the original text.
--narrator(-n): string                                 #Specify the narrator, and listen to the translation.
--player: string                                       #Specify the audio player to use, and listen to the translation.
--no-play                                              #Do not listen to the translation.
--no-translate                                         #Do not translate anything when using -speak.
--download-audio                                       #Download the audio to the current directory.
--download-audio-as: string@path                       #Download the audio to the specified file.
--view(-v)                                             #View the translation in a terminal pager.
--pager: string                                        #Specify the terminal pager to use, and view the translation.
--no-view                                              #Do not view the translation in a terminal pager.
--no-pager                                             #Do not view the translation in a terminal pager.
--browser: string                                      #Specify the web browser to use.
--no-browser                                           #Do not open the web browser.
--proxy(-x): string,                                    #Use HTTP proxy on given port.
--user-agent(-u): string                                #Specify the User-Agent to identify as.
--ipv4(-4)                                             #Connect only to IPv4 addresses.
--inet4-only                                           #Connect only to IPv4 addresses.
--ipv6(-6)                                             #Connect only to IPv6 addresses. 
--inet6-only                                           #Connect only to IPv6 addresses.
--interactive(-I)                                      #Start an interactive shell.
--shell                                                #Start an interactive shell.
--emacs(-E)                                            #Start the GNU Emacs front-end for an interactive shell.
--no-rlwrap                                            #Do not invoke rlwrap when starting an interactive shell.
--input(-i): string@path                               #Specify the input file.
--output(-o): string@path                              #Specify the output file.
--hl: string@codes                                     #Specify the host (interface) language.
--host: string@codes                                   #Specify the host (interface) language.
-s :string                                             #Specify the source language(s), joined by '+'.
--sl :string                                           #Specify the source language(s), joined by '+'.
--source :string                                       #Specify the source language(s), joined by '+'.
--from                                                 #Specify the source language(s), joined by '+'.
--t :string,                                           #Specify the target language(s), joined by '+'.
--tl :string,                                          #Specify the target language(s), joined by '+'.
--target :string,                                      #Specify the target language(s), joined by '+'.
--to                                                   #Specify the target language(s), joined by '+'.
--join-sentence(-j)                                    #Treat all arguments as one single sentence.
--no-init                                              #Do not load any initialization script.
]
