# Description: (Before Update feeds)


# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default   
# echo "src-git small https://github.com/kenzok8/small" >> ./feeds.conf.default
sed -i "/openwrt-neko/d" "feeds.conf.default"
echo "src-git neko https://github.com/nosignals/openwrt-neko.git;main" >> "feeds.conf.default"
./scripts/feeds update openwrt-neko
./scripts/feeds install -a -f -p openwrt-neko
sed -i "/openwrt-neko/d" "feeds.conf.default"
./scripts/feeds clean
./scripts/feeds update -a
./scripts/feeds install -a
