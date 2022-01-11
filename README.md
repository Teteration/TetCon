# TetCon ![lang](https://img.shields.io/badge/Bash-Script-yellow)
>*Tetcon* is a **shell script** that provide some ***Web Application Reconnaissance*** Service such as :

- Port Scan
- Directory Discovery
- Sub Domain Discovery
- Fuzzer


## Example Usages
```
./Tetcon.sh -p  {ip}
./Tetcon.sh -sp {ip} {port}
./Tetcon.sh -fp {ip}
./Tetcon.sh -c  {domain.tld/ip} -blacklist "ext|ext|ext...|ext"
./Tetcon.sh -sd {domain.tld} 
./Tetcon.sh -f  {domain.tld} -w {word list}
./Tetcon.sh -t  {scheme://domain.tld}
```
---

## Installation
install requirements
```
sudo apt install figlet dnsutils lolcat netcat curl jq
```
Clone the repo
```
git clone https://github.com/mahdihamedi79/TetCon.git
```
and
```
cd TetCon
```
and
```
sudo chmod +x Tetcon.sh
```
