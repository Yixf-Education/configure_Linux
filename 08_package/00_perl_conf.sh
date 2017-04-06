# find the best mirrors
cpan -P > ./package/cpan_mirrors_test.txt
# extract the urls of top 3 best mirrors
grep "ms" ./package/cpan_mirrors_test.txt | grep -w '\->' | awk '{print $3,$1}' | sort -V | head -n 3 | cut -d" " -f2 | tr '\n' ' ' > ./package/cpan_mirrors_selected.txt
# extract the urls of ms<100
#grep "ms" ./package/cpan_mirrors_test.txt | grep -w '\->' | awk '{if($3<100){print $3,$1}}' | sort -V | cut -d" " -f2 | tr '\n' ' ' > ./package/cpan_mirrors_selected.txt

# configure cpan
# http://mirrors.163.com/cpan/
echo -e "o conf urllist $(cat ./package/cpan_mirrors_selected.txt) \n o conf commit" | sudo cpan

# upgrade all installed modules
sudo cpan -u
