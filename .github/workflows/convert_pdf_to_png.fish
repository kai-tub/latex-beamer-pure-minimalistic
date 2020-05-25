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
        set convert_target (string replace -r '(.*)\.pdf' '$1-%02d.png' "$file_")
        set convert_source (string replace -r '(.*)\.pdf' '$1-*.png' "$file_")
        set montage_target (string replace -r '(.*)\.pdf' '$1.png' "$file_")
        convert -density 500 "$file_" "$convert_target"
        montage "$convert_source" -geometry +2+2 -tile x2 -background none "$montage_target"
        # maybe next to each other
    end
end

# TODO: Some processing

convert_minimal_examples
convert_compare_examples