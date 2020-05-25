#!/bin/fish

function convert_minimal_examples
    set files (find ./minimal_examples -type d -path '*/.git' -prune -o -name '*.pdf' -print0 | xargs -0)
    for file_ in "$files"
        set target (string replace '.pdf' '.png' "$file_")
        convert -density 500 "$file_"[0] "$target"
    end
end

function convert_compare_examples
    set files (find ./compare_examples -type d -path '*/.git' -prune -o -name '*example*.pdf' -print0 | xargs -0)
    for file_ in "$files"
        set target (string replace '.pdf' '-%02d.png' "$file_")
        set montage_target (string replace '.pdf' '.png' "$file_")
        convert -density 500 "$file_" "$target"
        montage *.png -geometry +2+2 -tile 2x -background none "$montage_target"
    end
end

# TODO: Some processing

convert_minimal_examples
convert_compare_examples