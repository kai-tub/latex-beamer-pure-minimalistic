#!/usr/bin/env nu

use std assert

# how is this called?
# in a wrapping bash script (presumably)
# that provides the paths as arguments that use the environment variables
# from $src and $out ?

# Convert all PDF files in the `src-dir` to png files,
# where each page of the PDF is converted into a file called
# `<src-stem>-<page-num>.png`
# Can be used for `minimal_examples`
export def "main convert-pdfs-to-pngs" [
  --src-dir: path
  --target-dir: path
  --density: int = 300
]: nothing -> nothing {
  cd $src_dir
  ls *.pdf | get name | each {
    |f|
    let stem = $f | path parse | $in.stem
    let result_path = $"($target_dir)/($stem)-%02d.png"
    ^convert -density $density $f $result_path
  }
  null
}

export def "main create-montage compare_examples" [
  --src-dir: path
  --target-dir: path
] {
  let tmp_dir = mktemp -d

  main convert-pdfs-to-pngs --src-dir $src_dir --target-dir $tmp_dir
  print (ls $tmp_dir | table)
  let dark_ordered_pngs = (glob $"($tmp_dir)/pureminimalistic_example_dark*.png") | zip (glob $"($tmp_dir)/defaultbeamer_example*.png") | flatten
  assert (($dark_ordered_pngs | length) > 0)
  let light_ordered_pngs = (glob $"($tmp_dir)/pureminimalistic_example_light*.png") | zip (glob $"($tmp_dir)/defaultbeamer_example*.png") | flatten
  assert (($light_ordered_pngs | length) > 0)
  ^montage ...$dark_ordered_pngs -geometry +4+4 -tile 2x -background gray -colorspace RGB $"($target_dir)/comparison_dark.png"
  ^montage ...$light_ordered_pngs -geometry +4+4 -tile 2x -background gray -colorspace RGB $"($target_dir)/comparison_light.png"

  rm -r $tmp_dir
}

export def "main create-montage multi_lang_examples" [
  --src-dir: path
  --target-dir: path
] {
  let tmp_dir = mktemp -d

  main convert-pdfs-to-pngs --src-dir $src_dir --target-dir $tmp_dir
  let multi_lang_pngs = (glob $"($tmp_dir)/*.png")
  assert (($multi_lang_pngs | length) > 0)
  ^montage ...$multi_lang_pngs -geometry +4+4 -tile 2x -background gray -colorspace RGB $"($target_dir)/lang_comparison.png"

  rm -r $tmp_dir
}

export def "main create-montage demo" [
  --src-dir: path
  --target-dir: path
] {
  let tmp_dir = mktemp -d
  main convert-pdfs-to-pngs --src-dir $src_dir --target-dir $tmp_dir
  ^montage ...(glob $"($tmp_dir)/*.png" | sort --natural) -geometry +10+10 -tile 4x -background gray $"($target_dir)/beamertheme-pure-minimalistic-demo.png"

  rm -r $tmp_dir
}

export def main [] {}
