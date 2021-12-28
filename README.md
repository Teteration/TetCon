# TetCon ![lang](https://img.shields.io/badge/Bash-Script-yellow)
>*Tetcon* is a **shell script** that provide some ***Web Application Reconnaissance*** Service such as :

- Port Scan
- Directory Discovery
- Sub Domain Discovery
- Fuzzer


## Example Usages
```
./Tetcon.sh -p {domain/ip}
./Tetcon.sh -c {domain/ip} -blacklist "ext|ext|ext...|ext"
./Tetcon.sh -sd {domain} 
./Tetcon.sh -f {domain} -w {word list}

```
---

## Installation
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
