template_mod="src/generated/mod.rs"

build_template:
	@echo '// Auto generated by $$ make build_template' > ${template_mod} && \
	echo "// Don't edit this file by HAND, edit the ../template directory instead." >> ${template_mod} && \
	echo "// Then run $$ make build_template" >> ${template_mod} && \
	echo "\npub const MAIN_RS: &str = \"$(shell cat template/src/main.rs | base64)\";" >> ${template_mod} && \
	echo "\npub const CARGO_TOML: &str = \"$(shell cat template/Cargo.toml | base64)\";" >> ${template_mod}

.PHONY: build_template