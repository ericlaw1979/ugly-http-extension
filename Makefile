
ZIP = ugly-http.zip
SOURCE_FILES = manifest.json ugly.css $(wildcard images/*.png)

# Target name is expand to assist zsh autocomplete.
ugly-http.zip: $(SOURCE_FILES)
	echo $(SOURCE_FILES)
	rm -rf $(ZIP)
	zip $(ZIP) $(SOURCE_FILES)

.PHONY: clean
clean:
	rm $(ZIP)