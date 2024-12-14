Swift renders immediately after each modifer.  This is why the order of modifers matters.

if you do:

```
Text("yo")
  .padding()
  .background(.red)
```

If will draw a text box, some padding and then color the text and padding with background a background.
