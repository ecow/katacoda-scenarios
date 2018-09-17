Create a script to rebuild the whole knowledge base is easy.

exit from the sdaas cli:

`exit`{{execute}}

Create a file with name build.sdaas (you chan choose the name) and put all SD_ commands one per line. the last line will be SD_THATS_ALL_FOLKS

`cat build.sdaas`{{execute}}

Rebuild the whole knowledge base from scratch:

`sdaas -f build.sdaas --reboot`{{execute}}

THATS_ALL_FOLKS