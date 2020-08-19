# bash commands cheat sheet

## git filenames without extension
```
git status --porcelain \| cut -d' ' -f3 \| sed -r "s/.+\/(.+)\..+/\1/"
```

## get top processes using cpu
```
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -35 > ~/temp/ps_by_cpu.txt
```

## extract rpm file
```
rpm2cpio $${srpm_file} | cpio -idvu
```