#!/bin/bash

# jumpstart.sh: Fetches BaseSystem and converts it to a viable format.
# by Foxlet <foxlet@furcode.co>

TOOLS=$PWD/tools

print_usage() {
    echo
    echo "Usage: $0"
    echo
    echo " -s,   --sonoma              Fetch Sonoma media"
    echo " -v,   --ventura             Fetch Ventura media"
    echo " -m,   --monterey            Fetch Monterey media"
    echo " -b,   --bigsur              Fetch BigSur media"
    echo " -c,   --catalina            Fetch Catalina media"
    echo " -moj, --mojave              Fetch Mojave media"
    echo " -hs,  --high-sierra         Fetch High Sierra media"
    echo " -si,  --sierra              Fetch Sierra media"
    echo " -ec,  --el-capitan          Fetch El Capitan media"
    echo " -y,   --yosemite            Fetch Yosemite media"
    echo " -ma,  --mavericks           Fetch Mavericks media"
    echo " -ml,  --mountain-lion       Fetch Mountain Lion media"
    echo " -l,   --lion                Fetch Lion media"
    echo
}

error() {
    local error_message="$*"
    echo "${error_message}" 1>&2;
}

argument="$1"
case $argument in
    -h|--help)
        print_usage
        ;;
    -s|--sonoma|)
        "$TOOLS/FetchMacOS/fetch.sh" -v 14 || exit 1;
        ;;
    -v|--ventura|)
        "$TOOLS/FetchMacOS/fetch.sh" -v 13 || exit 1;
        ;;
    -m|--monterey)
        "$TOOLS/FetchMacOS/fetch.sh" -v 12 || exit 1;
        ;;
    -b|--bigsur)
        "$TOOLS/FetchMacOS/fetch.sh" -v 11 || exit 1;
        ;;
    -c|--catalina|)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.15 || exit 1;
        ;;
    -m|--mojave)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.14 || exit 1;
        ;;
    -hs|--high-sierra)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.13 || exit 1;
        ;;
    -si|--sierra)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.12 || exit 1;
        ;;
    -ec|--el-capitan)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.11 || exit 1;
        ;;
    -y|--yosemite)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.10 || exit 1;
        ;;
    -ma|--mavericks)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.09 || exit 1;
        ;;
    -ml|--mountain-lion)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.08 || exit 1;
        ;;
    -l|--lion)
        "$TOOLS/FetchMacOS/fetch.sh" -v 10.07w || exit 1;
        ;;
esac

echo "salut"

"$TOOLS/dmg2img" "$TOOLS/FetchMacOS/BaseSystem/BaseSystem.dmg" "$PWD/BaseSystem.img"
