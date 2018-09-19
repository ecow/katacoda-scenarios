Create a script to rebuild the whole knowledge base is easy.

exit from the sdaas cli:

`exit`{{execute}}

Create a file with name build.sdaas (you chan choose the name) and put all SD_ commands one per line. the last line will be SD_THATS_ALL_FOLKS

```
SD_EVAL_CONSTRUCTOR http://datiopen.istat.it/ @istat.construct
SD_EVAL_CONSTRUCTOR http://wikipedia.org/ @wikidata.construct
SD_THATS_ALL_FOLKS
```

Rebuild the whole knowledge base from scratch:

`docker exec -ti ldc sdaas -f build.sdaas --reboot`{{execute}}

You can use this command any time to update the knwoledge base with fresh data.

THATS_ALL_FOLKS