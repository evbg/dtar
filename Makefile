install:
	./dtar -g -i

uninstall:
	rm -f /usr/local/bin/dtar

symlinks:
	./dtar -g iaf

install-local:
	./dtar -i

uninstall-local:
	rm -f ~/bin/dtar

symlinks-local:
	./dtar iaf

test:
	./dtar_test.sh

clean:
	rm -rf ./shunit2
