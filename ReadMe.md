I recommend Sublime Text for Development, using the Extension: 

https://github.com/StoneCypher/sublime-apl

A suitable Sublime Text build system could be

```JSON
{
    "shell_cmd": "/usr/local/bin/dyalog -script \"${file}\"",
    "selector": "source.apl",
    "encoding": "utf-8",
    "working_dir": "${file_path}",
    "quiet": true
}
```

