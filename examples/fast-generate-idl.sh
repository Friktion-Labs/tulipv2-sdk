#!/usr/bin/env bash

# Create IDL files without having to build the whole project in Rust

echo Generating IDL json and types

mkdir -p target/idl/

anchor idl parse --no-docs --file programs/examples/src/lib.rs > target/idl/examples.json
echo "export type ExamplesIDL = $(cat target/idl/examples.json);" > target/types/examples.ts
echo "export const ExamplesIDLJsonRaw = $(cat target/idl/examples.json);" >> target/types/examples.ts