#!/bin/fish

function convert_minimal_examples
    set files (find ./minimal_examples -type d -path '*/.git' -prune -o -name '*.pdf' -print)
    for file_ in $files
        echo "$file_"
        set target (string replace '.pdf' '.png' "$file_")
        convert -density 500 "$file_"[0] "$target"
    end
end

function convert_compare_examples
    set files (find ./compare_examples -type d -path '*/.git' -prune -o -name '*example*.pdf' -print)

    for file_ in $files
        echo "$file_"
        set convert_target (string replace -r '(.*)\.pdf' '$1-%02d.tmp.png' "$file_")
        set montage_source (string replace -r '(.*)\.pdf' '$1-*.png' "$file_")
        set montage_target (string replace -r '(.*)\.pdf' '$1.tmp.png' "$file_")
        convert -density 300 "$file_" "$convert_target"
        montage "$montage_source" -geometry +10+10 -tile 1x -background gray -colorspace RGB "$montage_target"
        # maybe next to each other
    end
    montage ./compare_examples/pureminimalistic_example_dark.tmp.png ./compare_examples/defaultbeamer_example.tmp.png -geometry +2+2 -tile 2x -background gray ./compare_examples/comparison_dark.png
    montage ./compare_examples/pureminimalistic_example_light.tmp.png ./compare_examples/defaultbeamer_example.tmp.png -geometry +2+2 -tile 2x -background gray ./compare_examples/comparison_light.png
end

function convert_demo
    convert -density 300 tmp/demo.pdf demo-%02d.png
    montage demo-*.png -geometry +10+10 -tile 4x -background gray demo.png
end

apk add --no-cache imagemagick

convert_demo
convert_minimal_examples
convert_compare_examples
