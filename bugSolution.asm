```assembly
; Ensure proper alignment before accessing memory
mov ebx, [some_address]
; Check alignment (example, assuming eax is 4 bytes)
and ebx, 0x3 ; Check lower 2 bits for alignment
cmp ebx, 0 ;Check if lower 2 bits are 0. It means the memory is already aligned.
je aligned
; Adjust pointer for alignment if needed
; You can also use other alignment handling techniques depending on architecture
; ... alignment handling code...
aligned:
mov eax, [ebx + 0x10]
add eax, ecx
mov [ebx + 0x14], eax
```