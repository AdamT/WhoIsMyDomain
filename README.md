## WhoIsMyDomain:
This class combines into pairs all the words you'd consider in naming your startup/project. To these pairs it adds the domain extensions you're interested in. It then uses the whois gem to check and see which of these domains is actually available. If you have any additions/modifications please share.

## How to use:
1. Download WhoIsMyDomain.rb
2. Install whois gem:
    gem install whois
2. Add favorite names and words to @fav_names
3. Add favorite domain extensions to @fav_extensions
4. Uncomment #unless name_first == name_second (line 16) if you don't want doubles.
5. Uncomment #run_me.print_all_urls (line 36) if you want to see all your combinations.
6. In your terminal run:
    ruby WhoIsMyDomain.rb

## Copyright:
Free of course.