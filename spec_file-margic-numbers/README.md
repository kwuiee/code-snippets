# About  
This file was generated automatically based on this two sources:  
1. /etc/nginx/mime.types  
2. http://www.garykessler.net/library/file_sigs.html  

# File format  
This is a JSON object by following structure:  
```
[string ext] : {
  signs: [sign]
  mime: string
}
```
A `sign` is a string in this format (without any space):  
```
[int o],[hex s]
```
where `o` is `x byte offset` (Commonly zero)  

## Example Sign  
MP4:
```
[4 byte offset]
66 74 79 70 69 73 6F 6D	
```
becomes:   
```
4,6674797069736F6D
```