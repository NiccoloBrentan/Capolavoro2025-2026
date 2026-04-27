.model small
.stack 100h
.data
msg1 db 'Inserisci il codice ISBN (12 cifre): ', '$'
msg2 db 13, 10, 'La cifra di controllo e: ', '$'
bf   db 14, 0, 14 dup('$') 
.code
.startup
mov ah, 09h
mov dx, offset msg1
int 21h

mov ah, 0Ah
mov dx, offset bf
int 21h

mov si, offset bf
add si, 2
    
xor cx, cx
mov cl, bf[1]
mov bx, 1
xor di, di

c1:
jcxz fc1

mov al, [si]
sub al, '0'
xor ah, ah

test bl, 1
jnz somma

mov dl, 3
mul dl

somma:
add di, ax
inc si
inc bx
loop c1  

fc1:
mov ax, di
mov dl, 10
div dl

mov al, 10
sub al, ah        

cmp al, 10
jne c2
mov al, 0

c2:
add al, '0'

mov ah, 09h
mov dx, offset msg2
int 21h

mov dl, al
mov ah, 02h
int 21h

mov ah, 4Ch
int 21h
end