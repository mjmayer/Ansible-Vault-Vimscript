function! Decrypt_Vault()
   let setting_autoread = &autoread
   set autoread
   let ansible_vault_pass =  "~/.vault_pass"
   let current_file = expand('%:p')
   silent execute "!" . "ansible-vault --vault-password-file " . ansible_vault_pass . " decrypt " . current_file
   if !setting_autoread
      set noautoread
   endif
endfunction

function! Encrypt_Vault()
   let setting_autoread = &autoread
   set autoread
   let ansible_vault_pass =  "~/.vault_pass"
   let current_file = expand('%:p')
   silent execute "!" . "ansible-vault --vault-password-file " . ansible_vault_pass . " encrypt " . current_file
   if !setting_autoread
      set noautoread
   endif
endfunction

" call Decrypt_Vault()
" call Encrypt_Vault()
