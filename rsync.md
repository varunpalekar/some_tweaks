RSYNC
=====
A good tool for syncing

Usage 
======

* Want to sync with remote sudo. 

        rsync -ra -e "ssh" --progress --rsync-path="echo mypassword | sudo -S  mkdir -p /remote/lovely/folder && sudo rsync" --stats source_path destination .

    Where   r => recursively
            a => archive means preserve your permissions and other info as well. 