function fish_user_key_bindings
  fish_vi_key_bindings
  bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
  bind p fish_clipboard_paste
  bind -m default L end-of-line
  bind -m default H beginning-of-line
  fzf_key_bindings
end
