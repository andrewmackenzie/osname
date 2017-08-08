# OS Release Lists
# (No doubt there are more mature bash-y ways of doing this, but I'll understand this next time I look at it
OSProductPrefixList=('Mac OS X' 'Mac OS X' 'Mac OS X' 'Mac OS X' 'Mac OS X' 'Mac OS X' 'Mac OS X' 'Mac OS X' 'OS X' 'OS X' 'OS X' 'OS X' macOS macOS)
OSCodeNameList=(Cheetah Puma Jaguar Panther Tiger Leopard 'Snow Leopard' Lion 'Mountain Lion' Mavericks Yosemite 'El Capitan' Sierra 'High Sierra')

# show currently running version
installedMajorRelease=$(sw_vers -productVersion | awk -F '.' '{ print $2 }')
echo "You're on ${OSProductPrefixList[$installedMajorRelease]} ${OSCodeNameList[$installedMajorRelease]}"

# sanity check - show them all
for i in `seq 0 13`; do echo "10.${i}: ${OSProductPrefixList[$i]} ${OSCodeNameList[$i]}" ; done
