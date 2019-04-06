#!/usr/bin/env bash
# This script creates colored folder icons for Suru+ icon theme
#
# Colors of the folder icon:
#
#   @ - primary color
#	" - secondary color
#	. - color of symbol
#
#     """""""""""""""""
#    """"""""""""""""""""
#    """"""""""""""""""""""""""""""""""""""""
#    """"""""""""""""""""""""""""""""""""""""
#    """"""""""""""""""""@@@@@@@@@@@@@@@@@@@"
#    """"""""""""""""""@@@@@@@@@@@@@@@@@@@@@@
#    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@@....@@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@@.@@.@@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@@.@@.@@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@@.@@.@@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@......@@......@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@.@@@@@@@@@@.@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@.@@@@@@@@.@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@..@@..@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@@@..@@@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@............@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

set -eo pipefail

THIS_SCRIPT="$(basename "${BASH_SOURCE[0]}")"

if [ -d "$1" ]; then
	TARGET_DIR="$1"
else
	printf "%s\n" "usage: $THIS_SCRIPT <path to icon theme>" >&2
	exit 128
fi

DEFAULT_COLOR="orange"
SIZES_REGEX="(16|scalable)"
MONOCHROME_SIZES_REGEX="(16)"
COLOR_SIZES_REGEX="(scalable)"
FILES_REGEX="(folder|user)-"

declare -A COLORS

COLORS=(
	# [0] - primary color – start
	# [1] - primary color – end
	# [2] - blurry shadow
	# [3] - secondary color
	# [4] - color of symbol
	#
	# | name         | [0]   | [1]   | [2]   | [3]   | [4]   |
	# |--------------|-------|-------|-------|-------|-------|
	[orange]="        #fb7c38 #fda463 #903906 #f34f17 #fedbc7"
	[aubergine]="     #a0649a #ad7aa9 #4f1748 #85377d #ddc8db"
	[blue]="     			#37a6e6 #6dc7f1 #135c9a #1a7fd4 #c6e9f7"
	[bordeaux]="     	#c2655b #d3918a #7f372f #ad4b41 #edd3d0"
	[canonical]="     #925475 #ad7f98 #4c1a35 #853e64 #ddcad4"
	[cyan]="     			#31c6b7 #5bdbc1 #1f6166 #2daaaa #bae8d5"
	[darkblue]="     	#6d95b0 #97b4c7 #3d5c71 #537e9b #d5e1e8"
	[green]="     		#76c22b #a6d74f #1f6617 #46a926 #dce6b8"
	[purple]="     		#8f76e4 #a7a7f1 #642f99 #8c59d0 #dcdef5"
	[red]="     			#f22c42 #f76363 #7f1126 #da1636 #fac3ba"
	[vermillion]="    #e44739 #eb7b71 #991f15 #d12b1d #f7cac6"
	[yellow]="     		#ffda64 #fee581 #664f02 #fdc92b #403101"
)

headline() {
	printf "%b => %b%s\n" "\e[1;32m" "\e[0m" "$*" >&2
}

msg() {
	printf "%b [+] %b%s\n" "\e[1;33m" "\e[0m" "$*" >&2
}

recolor() {
	# args: <old colors> <new colors> <path to file>
	IFS=" " read -ra old_colors <<< "$1"
	IFS=" " read -ra new_colors <<< "$2"
	local filepath="$3"

	[ -f "$filepath" ] || exit 1

	for (( i = 0; i < "${#old_colors[@]}"; i++ )); do
		sed -i "s/${old_colors[$i]}/${new_colors[$i]}/gI" "$filepath"
	done
}

headline "PHASE 1: Delete color suffix from monochrome icons ..."
# -----------------------------------------------------------------------------
find "$TARGET_DIR" -regextype posix-extended \
	-regex ".*/places/${MONOCHROME_SIZES_REGEX}/${FILES_REGEX}${DEFAULT_COLOR}-.*" \
	-print0 | while read -r -d $'\0' file; do

	new_file="${file/-$DEFAULT_COLOR-/-}"

	msg "'$file' is renamed to '$new_file'"
	mv -f "$file" "$new_file"
done


headline "PHASE 2: Create missing symlinks ..."
# -----------------------------------------------------------------------------
find "$TARGET_DIR" -type f -regextype posix-extended \
	-regex ".*/places/${COLOR_SIZES_REGEX}/${FILES_REGEX}${DEFAULT_COLOR}[-\.].*" \
	-print0 | while read -r -d $'\0' file; do

	target="$(basename "$file")"
	symlink="${file/-$DEFAULT_COLOR/}"

	[ -e "$symlink" ] && continue

	msg "Creating missing symlink '$symlink' ..."
	ln -sf "$target" "$symlink"
done


headline "PHASE 3: Generate color folders ..."
# -----------------------------------------------------------------------------
find "$TARGET_DIR" -type f -regextype posix-extended \
	-regex ".*/places/${SIZES_REGEX}/${FILES_REGEX}${DEFAULT_COLOR}[-\.].*" \
	-print0 | while read -r -d $'\0' file; do

	for color in "${!COLORS[@]}"; do
		[[ "$color" != "$DEFAULT_COLOR" ]] || continue

		new_file="${file/-$DEFAULT_COLOR/-$color}"

		cp -P --remove-destination "$file" "$new_file"
		recolor "${COLORS[$DEFAULT_COLOR]}" "${COLORS[$color]}" "$new_file"
	done
done


headline "PHASE 4: Create symlinks for Folder Color v0.0.80 and newer ..."
# -----------------------------------------------------------------------------
# Icons mapping
FOLDER_COLOR_MAP=(
	# Folder Color icon         | Suru-plus icon
	# --------------------------|---------------------------
	"folder-COLOR-desktop.svg    user-COLOR-desktop.svg"
	"folder-COLOR-downloads.svg  folder-COLOR-download.svg"
	"folder-COLOR-public.svg     folder-COLOR-image-people.svg"
	"folder-COLOR-videos.svg     folder-COLOR-video.svg"
)

for mask in "${FOLDER_COLOR_MAP[@]}"; do
	for color in "${!COLORS[@]}"; do
		IFS=" " read -ra icon_mask <<< "$mask"
		folder_color_icon="${icon_mask[0]/COLOR/$color}"
		icon="${icon_mask[1]/COLOR/$color}"

		find "$TARGET_DIR" -regextype posix-extended \
			-regex ".*/places/${SIZES_REGEX}/${icon}" \
			-print0 | while read -r -d $'\0' file; do

			base_name="$(basename "$file")"
			dir_name="$(dirname "$file")"

			ln -sf "$base_name" "$dir_name/$folder_color_icon"
		done
	done
done