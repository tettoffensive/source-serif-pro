#!/bin/env sh

family=SourceSerifPro
weights='ExtraLight Light Regular Semibold Bold Black'

# clean existing build artifacts
rm -rf target/
mkdir target/ target/OTF/ target/TTF/

for w in $weights
do
  font_path=Roman/$w/font
  makeotf -f $font_path.ufo -r -o target/OTF/$family-$w.otf
  makeotf -f $font_path.ttf -r -o target/TTF/$family-$w.ttf -ff $font_path.ufo/features.fea
done
