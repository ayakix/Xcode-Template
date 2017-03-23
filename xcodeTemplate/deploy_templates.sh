#!/usr/bin/env bash

template_name="Custom"

cocoa_touch_template=Cocoa\ Touch\ Class.xctemplate
original_dir=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/Source/$cocoa_touch_template
custom_dir=$HOME/Library/Developer/Xcode/Templates/File\ Templates/$template_name

if [ ! -d "$custom_dir" ]; then
    mkdir -p "$custom_dir"
fi

cp -r "$original_dir" "$custom_dir"
cp -r "$cocoa_touch_template" "$custom_dir"

