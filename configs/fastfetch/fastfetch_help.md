# Fastfetch Help

This helped me quickly test and configure my fastfetch config.

## Fish Script

```fish
for line in (fastfetch --list-modules)
    set name (string match -rg '^\d+\)\s*(.+?)\s*:' -- $line)
    if test -n "$name"
        set key (string lower (string replace -a ' ' '' -- $name))
        set help (fastfetch -h "$key-format" 2>&1)
        set varlines (string match -r '^\s*\{[^}]+\}:.*' -- $help)
        if test -n "$varlines"
            echo "$key:"
            printf '%s\n' $varlines
            set placeholders
            for vl in $varlines
                set ph (string match -rg '^\s*(\{[^}]+\})' -- $vl)
                set placeholders $placeholders $ph
            end
            echo $placeholders
            echo
        end
    end
end | less
```

## Output

```
battery:
{manufacturer}: Battery manufacturer
{model-name}: Battery model name
{technology}: Battery technology
{capacity}: Battery capacity (percentage num)
{status}: Battery status
{temperature}: Battery temperature (formatted)
{cycle-count}: Battery cycle count
{serial}: Battery serial number
{manufacture-date}: Battery manufacture date
{capacity-bar}: Battery capacity (percentage bar)
{time-days}: Battery time remaining days
{time-hours}: Battery time remaining hours
{time-minutes}: Battery time remaining minutes
{time-seconds}: Battery time remaining seconds
{time-formatted}: Battery time remaining (formatted)
{manufacturer} {model-name} {technology} {capacity} {status} {temperature} {cycle-count} {serial} {manufacture-date} {capacity-bar} {time-days} {time-hours} {time-minutes} {time-seconds} {time-formatted}

bios:
{date}: BIOS date
{release}: BIOS release
{vendor}: BIOS vendor
{version}: BIOS version
{type}: Firmware type
{date} {release} {vendor} {version} {type}

bluetooth:
{name}: Name
{address}: Address
{type}: Type
{battery-percentage}: Battery percentage number
{connected}: Is connected
{battery-percentage-bar}: Battery percentage bar
{name} {address} {type} {battery-percentage} {connected} {battery-percentage-bar}

bluetoothradio:
{name}: Radio name for discovering
{address}: Address
{lmp-version}: LMP version
{lmp-subversion}: LMP subversion
{version}: Bluetooth version
{vendor}: Vendor
{discoverable}: Discoverable
{connectable}: Connectable / Pairable
{name} {address} {lmp-version} {lmp-subversion} {version} {vendor} {discoverable} {connectable}

board:
{name}: Board name
{vendor}: Board vendor
{version}: Board version
{serial}: Board serial number
{name} {vendor} {version} {serial}

bootmgr:
{name}: Name / description
{firmware-path}: Firmware file path
{firmware-name}: Firmware file name
{secure-boot}: Is secure boot enabled
{order}: Boot order
{name} {firmware-path} {firmware-name} {secure-boot} {order}

brightness:
{percentage}: Screen brightness (percentage num)
{name}: Screen name
{max}: Maximum brightness value
{min}: Minimum brightness value
{current}: Current brightness value
{percentage-bar}: Screen brightness (percentage bar)
{is-builtin}: Is built-in screen
{percentage} {name} {max} {min} {current} {percentage-bar} {is-builtin}

btrfs:
{name}: Name / Label
{uuid}: UUID
{devices}: Associated devices
{features}: Enabled features
{used}: Size used
{allocated}: Size allocated
{total}: Size total
{used-percentage}: Used percentage num
{allocated-percentage}: Allocated percentage num
{used-percentage-bar}: Used percentage bar
{allocated-percentage-bar}: Allocated percentage bar
{node-size}: Node size
{sector-size}: Sector size
{name} {uuid} {devices} {features} {used} {allocated} {total} {used-percentage} {allocated-percentage} {used-percentage-bar} {allocated-percentage-bar} {node-size} {sector-size}

camera:
{name}: Device name
{vendor}: Vendor
{colorspace}: Color space
{id}: Identifier
{width}: Width (in px)
{height}: Height (in px)
{name} {vendor} {colorspace} {id} {width} {height}

chassis:
{type}: Chassis type
{vendor}: Chassis vendor
{version}: Chassis version
{serial}: Chassis serial number
{type} {vendor} {version} {serial}

codec:
{gpu}: GPU name
{direction}: Decoder / Encoder
{types}: Compatibility alias of codec types
{platform-api}: Platform API used for detection
{gpu} {direction} {types} {platform-api}

command:
{result}: Command result
{result}

cpu:
{name}: Name
{vendor}: Vendor
{cores-physical}: Physical core count
{cores-logical}: Logical core count
{cores-online}: Online core count
{freq-base}: Base frequency (formatted)
{freq-max}: Max frequency (formatted)
{temperature}: Temperature (formatted)
{core-types}: Logical core count grouped by frequency
{packages}: Processor package count
{march}: CPU microarchitecture
{numa-nodes}: NUMA node count
{code-name}: CPU code name
{technology}: CPU technology
{name} {vendor} {cores-physical} {cores-logical} {cores-online} {freq-base} {freq-max} {temperature} {core-types} {packages} {march} {numa-nodes} {code-name} {technology}

cpucache:
{result}: Separate result
{sum}: Sum result
{result} {sum}

cpuusage:
{avg}: CPU usage (percentage num, average)
{max}: CPU usage (percentage num, maximum)
{max-index}: CPU core index of maximum usage
{min}: CPU usage (percentage num, minimum)
{min-index}: CPU core index of minimum usage
{avg-bar}: CPU usage (percentage bar, average)
{max-bar}: CPU usage (percentage bar, maximum)
{min-bar}: CPU usage (percentage bar, minimum)
{avg} {max} {max-index} {min} {min-index} {avg-bar} {max-bar} {min-bar}

cursor:
{theme}: Cursor theme
{size}: Cursor size
{theme} {size}

datetime:
{year}: Year
{year-short}: Last two digits of year
{month}: Month
{month-pretty}: Month with leading zero
{month-name}: Month name
{month-name-short}: Month name short
{week}: Week number on year
{weekday}: Weekday
{weekday-short}: Weekday short
{day-in-year}: Day in year
{day-in-month}: Day in month
{day-in-week}: Day in week
{hour}: Hour
{hour-pretty}: Hour with leading zero
{hour-12}: Hour 12h format
{hour-12-pretty}: Hour 12h format with leading zero
{minute}: Minute
{minute-pretty}: Minute with leading zero
{second}: Second
{second-pretty}: Second with leading zero
{offset-from-utc}: Offset from UTC in the ISO 8601 format
{timezone-name}: Locale-dependent timezone name or abbreviation
{day-pretty}: Day in month with leading zero
{am-pm}: AM or PM
{year} {year-short} {month} {month-pretty} {month-name} {month-name-short} {week} {weekday} {weekday-short} {day-in-year} {day-in-month} {day-in-week} {hour} {hour-pretty} {hour-12} {hour-12-pretty} {minute} {minute-pretty} {second} {second-pretty} {offset-from-utc} {timezone-name} {day-pretty} {am-pm}

de:
{process-name}: DE process name
{pretty-name}: DE pretty name
{version}: DE version
{process-name} {pretty-name} {version}

display:
{width}: Screen configured width (in pixels)
{height}: Screen configured height (in pixels)
{refresh-rate}: Screen configured refresh rate (in Hz)
{scaled-width}: Screen scaled width (in pixels)
{scaled-height}: Screen scaled height (in pixels)
{name}: Screen name
{type}: Screen type (Built-in or External)
{rotation}: Screen rotation (in degrees)
{is-primary}: True if being the primary screen
{physical-width}: Screen physical width (in millimeters)
{physical-height}: Screen physical height (in millimeters)
{inch}: Physical diagonal length in inches
{ppi}: Pixels per inch (PPI)
{bit-depth}: Bits per color channel
{hdr-enabled}: True if high dynamic range (HDR) mode is enabled
{manufacture-year}: Year of manufacturing
{manufacture-week}: Nth week of manufacturing in the year
{serial}: Serial number
{platform-api}: The platform API used when detecting the display
{hdr-compatible}: True if the display is HDR compatible
{scale-factor}: HiDPI scale factor
{preferred-width}: Screen preferred width (in pixels)
{preferred-height}: Screen preferred height (in pixels)
{preferred-refresh-rate}: Screen preferred refresh rate (in Hz)
{dpi}: DPI
{width} {height} {refresh-rate} {scaled-width} {scaled-height} {name} {type} {rotation} {is-primary} {physical-width} {physical-height} {inch} {ppi} {bit-depth} {hdr-enabled} {manufacture-year} {manufacture-week} {serial} {platform-api} {hdr-compatible} {scale-factor} {preferred-width} {preferred-height} {preferred-refresh-rate} {dpi}

disk:
{size-used}: Size used
{size-total}: Size total
{size-percentage}: Size percentage num
{files-used}: Files used
{files-total}: Files total
{files-percentage}: Files percentage num
{is-external}: True if external volume
{is-hidden}: True if hidden volume
{filesystem}: Filesystem
{name}: Label / name
{is-readonly}: True if read-only
{create-time}: Create time in local timezone
{size-percentage-bar}: Size percentage bar
{files-percentage-bar}: Files percentage bar
{days}: Days after creation
{hours}: Hours after creation
{minutes}: Minutes after creation
{seconds}: Seconds after creation
{milliseconds}: Milliseconds after creation
{mountpoint}: Mount point / drive letter
{mount-from}: Mount from (device path)
{years}: Years integer after creation
{days-of-year}: Days of year after creation
{years-fraction}: Years fraction after creation
{size-free}: Size free
{size-available}: Size available
{size-used} {size-total} {size-percentage} {files-used} {files-total} {files-percentage} {is-external} {is-hidden} {filesystem} {name} {is-readonly} {create-time} {size-percentage-bar} {files-percentage-bar} {days} {hours} {minutes} {seconds} {milliseconds} {mountpoint} {mount-from} {years} {days-of-year} {years-fraction} {size-free} {size-available}

diskio:
{size-read}: Size of data read [per second] (formatted)
{size-written}: Size of data written [per second] (formatted)
{name}: Device name
{dev-path}: Device raw file path
{bytes-read}: Size of data read [per second] (in bytes)
{bytes-written}: Size of data written [per second] (in bytes)
{read-count}: Number of reads
{write-count}: Number of writes
{size-read} {size-written} {name} {dev-path} {bytes-read} {bytes-written} {read-count} {write-count}

dns:
{result}: DNS result
{result}

editor:
{type}: Type (Visual / Editor)
{name}: Name
{exe-name}: Exe name of real path
{path}: Full path of real path
{version}: Version
{type} {name} {exe-name} {path} {version}

font:
{font1}: Font 1
{font2}: Font 2
{font3}: Font 3
{font4}: Font 4
{combined}: Combined fonts for display
{font1} {font2} {font3} {font4} {combined}

gamepad:
{name}: Name
{serial}: Serial number
{battery-percentage}: Battery percentage num
{battery-percentage-bar}: Battery percentage bar
{name} {serial} {battery-percentage} {battery-percentage-bar}

gpu:
{vendor}: GPU vendor
{name}: GPU name
{driver}: GPU driver
{temperature}: GPU temperature
{core-count}: GPU core count
{type}: GPU type
{dedicated-total}: GPU total dedicated memory
{dedicated-used}: GPU used dedicated memory
{shared-total}: GPU total shared memory
{shared-used}: GPU used shared memory
{platform-api}: The platform API used when detecting the GPU
{frequency}: Current frequency in GHz
{index}: GPU vendor specific index
{dedicated-percentage-num}: Dedicated memory usage percentage num
{dedicated-percentage-bar}: Dedicated memory usage percentage bar
{shared-percentage-num}: Shared memory usage percentage num
{shared-percentage-bar}: Shared memory usage percentage bar
{core-usage-num}: Core usage percentage num
{core-usage-bar}: Core usage percentage bar
{memory-type}: Memory type (Windows only)
{pcie-max-speed}: PCIe maximum speed in gen and lanes
{pcie-curr-speed}: PCIe current speed in gen and lanes
{vendor} {name} {driver} {temperature} {core-count} {type} {dedicated-total} {dedicated-used} {shared-total} {shared-used} {platform-api} {frequency} {index} {dedicated-percentage-num} {dedicated-percentage-bar} {shared-percentage-num} {shared-percentage-bar} {core-usage-num} {core-usage-bar} {memory-type} {pcie-max-speed} {pcie-curr-speed}

host:
{family}: Product family
{name}: Product name
{version}: Product version
{sku}: Product sku
{vendor}: Product vendor
{serial}: Product serial number
{uuid}: Product uuid
{family} {name} {version} {sku} {vendor} {serial} {uuid}

icons:
{icons1}: Icons part 1
{icons2}: Icons part 2
{icons1} {icons2}

initsystem:
{name}: Init system name
{exe}: Init system exe path
{version}: Init system version path
{pid}: Init system pid
{name} {exe} {version} {pid}

kernel:
{sysname}: Sysname
{release}: Release
{version}: Version
{arch}: Architecture
{display-version}: Display version
{page-size}: Page size
{sysname} {release} {version} {arch} {display-version} {page-size}

keyboard:
{name}: Name
{serial}: Serial number
{name} {serial}

lm:
{service}: LM service
{type}: LM type
{version}: LM version
{service} {type} {version}

loadavg:
{loadavg1}: Load average over 1min
{loadavg2}: Load average over 5min
{loadavg3}: Load average over 15min
{loadavg1} {loadavg2} {loadavg3}

locale:
{result}: Locale code
{result}

localip:
{ipv4}: IPv4 address
{ipv6}: IPv6 address
{mac}: MAC address
{ifname}: Interface name
{is-default-route}: Is default route
{mtu}: MTU size in bytes
{speed}: Link speed (formatted)
{flags}: Interface flags
{ipv4} {ipv6} {mac} {ifname} {is-default-route} {mtu} {speed} {flags}

media:
{combined}: Pretty media name
{title}: Media name
{artist}: Artist name
{album}: Album name
{status}: Status
{progress}: Progress in text
{progress-num}: Progress in percentage (number)
{progress-bar}: Progress in percentage (bar)
{player-name}: Player name
{player-id}: Player ID
{url}: URL
{combined} {title} {artist} {album} {status} {progress} {progress-num} {progress-bar} {player-name} {player-id} {url}

memory:
{used}: Used size
{total}: Total size
{percentage}: Percentage used (num)
{percentage-bar}: Percentage used (bar)
{used} {total} {percentage} {percentage-bar}

monitor:
{name}: Display name
{width}: Native resolution width in pixels
{height}: Native resolution height in pixels
{physical-width}: Physical width in millimeters
{physical-height}: Physical height in millimeters
{inch}: Physical diagonal length in inches
{ppi}: Pixels per inch (PPI)
{manufacture-year}: Year of manufacturing
{manufacture-week}: Nth week of manufacturing in the year
{serial}: Serial number
{refresh-rate}: Maximum refresh rate in Hz
{hdr-compatible}: True if the display is HDR compatible
{name} {width} {height} {physical-width} {physical-height} {inch} {ppi} {manufacture-year} {manufacture-week} {serial} {refresh-rate} {hdr-compatible}

mouse:
{name}: Mouse name
{serial}: Mouse serial number
{name} {serial}

netio:
{rx-size}: Size of data received [per second] (formatted)
{tx-size}: Size of data sent [per second] (formatted)
{ifname}: Interface name
{is-default-route}: Is default route
{rx-bytes}: Size of data received [per second] (in bytes)
{tx-bytes}: Size of data sent [per second] (in bytes)
{rx-packets}: Number of packets received [per second]
{tx-packets}: Number of packets sent [per second]
{rx-errors}: Number of errors received [per second]
{tx-errors}: Number of errors sent [per second]
{rx-drops}: Number of packets dropped when receiving [per second]
{tx-drops}: Number of packets dropped when sending [per second]
{rx-size} {tx-size} {ifname} {is-default-route} {rx-bytes} {tx-bytes} {rx-packets} {tx-packets} {rx-errors} {tx-errors} {rx-drops} {tx-drops}

opencl:
{version}: Platform version
{name}: Platform name
{vendor}: Platform vendor
{version} {name} {vendor}

opengl:
{version}: OpenGL version
{renderer}: OpenGL renderer
{vendor}: OpenGL vendor
{slv}: OpenGL shading language version
{library}: OpenGL library used
{version} {renderer} {vendor} {slv} {library}

os:
{sysname}: Name of the kernel
{name}: Name of the OS
{pretty-name}: Pretty name of the OS, if available
{id}: ID of the OS
{id-like}: ID like of the OS
{variant}: Variant of the OS
{variant-id}: Variant ID of the OS
{version}: Version of the OS
{version-id}: Version ID of the OS
{codename}: Version codename of the OS
{build-id}: Build ID of the OS
{arch}: Architecture of the OS
{sysname} {name} {pretty-name} {id} {id-like} {variant} {variant-id} {version} {version-id} {codename} {build-id} {arch}

packages:
{am-system}: Number of am-system packages
{am-user}: Number of am-user (aka appman) packages
{appimage}: Number of appimage packages
{apk}: Number of apk packages
{brew}: Number of brew packages
{brew-cask}: Number of brew-cask packages
{cards}: Number of cards packages
{choco}: Number of choco packages
{dpkg}: Number of dpkg packages
{emerge}: Number of emerge packages
{eopkg}: Number of eopkg packages
{flatpak-system}: Number of flatpak-system app packages
{flatpak-user}: Number of flatpak-user app packages
{guix-home}: Number of guix-home packages
{guix-system}: Number of guix-system packages
{guix-user}: Number of guix-user packages
{hpkg-system}: Number of hpkg-system packages
{hpkg-user}: Number of hpkg-user packages
{install-release}: Number of install-release packages
{kiss}: Number of kiss packages
{linglong}: Number of linglong packages
{lpkg}: Number of lpkg packages
{lpkgbuild}: Number of lpkgbuild packages
{macports}: Number of macports packages
{mport}: Number of mport packages
{moss}: Number of moss packages
{nix-default}: Number of nix-default packages
{nix-system}: Number of nix-system packages
{nix-user}: Number of nix-user packages
{opkg}: Number of opkg packages
{pacman}: Number of pacman packages
{pacman-branch}: Pacman branch on manjaro
{pacstall}: Number of pacstall packages
{paludis}: Number of paludis packages
{pisi}: Number of pisi packages
{pkg}: Number of pkg packages
{pkgsrc}: Number of pkgsrc packages
{pkgtool}: Number of pkgtool packages
{porg}: Number of porg packages
{rpm}: Number of rpm packages
{scoop-global}: Number of scoop-global packages
{scoop-user}: Number of scoop-user packages
{snap}: Number of snap packages
{soar}: Number of soar packages
{sorcery}: Number of sorcery packages
{winget}: Number of winget packages
{xbps}: Number of xbps packages
{brew-all}: Total number of all brew packages
{flatpak-all}: Total number of all flatpak app packages
{guix-all}: Total number of all guix packages
{hpkg-all}: Total number of all hpkg packages
{nix-all}: Total number of all nix packages
{all}: Number of all packages
{am-system} {am-user} {appimage} {apk} {brew} {brew-cask} {cards} {choco} {dpkg} {emerge} {eopkg} {flatpak-system} {flatpak-user} {guix-home} {guix-system} {guix-user} {hpkg-system} {hpkg-user} {install-release} {kiss} {linglong} {lpkg} {lpkgbuild} {macports} {mport} {moss} {nix-default} {nix-system} {nix-user} {opkg} {pacman} {pacman-branch} {pacstall} {paludis} {pisi} {pkg} {pkgsrc} {pkgtool} {porg} {rpm} {scoop-global} {scoop-user} {snap} {soar} {sorcery} {winget} {xbps} {brew-all} {flatpak-all} {guix-all} {hpkg-all} {nix-all} {all}

physicaldisk:
{size}: Device size (formatted)
{name}: Device name
{interconnect}: Device interconnect type
{dev-path}: Device raw file path
{serial}: Serial number
{physical-type}: Device kind (SSD or HDD)
{removable-type}: Device kind (Removable or Fixed)
{readonly-type}: Device kind (Read-only or Read-write)
{revision}: Product revision
{temperature}: Device temperature (formatted)
{size} {name} {interconnect} {dev-path} {serial} {physical-type} {removable-type} {readonly-type} {revision} {temperature}

physicalmemory:
{bytes}: Size (in bytes)
{size}: Size formatted
{max-speed}: Max speed (in MT/s)
{running-speed}: Running speed (in MT/s)
{type}: Type (DDR4, DDR5, etc.)
{form-factor}: Form factor (SODIMM, DIMM, etc.)
{locator}: Bank/Device Locator (BANK0/SIMM0, BANK0/SIMM1, etc.)
{vendor}: Vendor
{serial}: Serial number
{part-number}: Part number
{is-ecc-enabled}: True if ECC enabled
{is-installed}: True if a memory module is installed in the slot
{bytes} {size} {max-speed} {running-speed} {type} {form-factor} {locator} {vendor} {serial} {part-number} {is-ecc-enabled} {is-installed}

player:
{player}: Pretty player name
{name}: Player name
{id}: Player Identifier
{url}: URL name
{player} {name} {id} {url}

poweradapter:
{watts}: Power adapter watts
{name}: Power adapter name
{manufacturer}: Power adapter manufacturer
{model}: Power adapter model
{description}: Power adapter description
{serial}: Power adapter serial number
{watts} {name} {manufacturer} {model} {description} {serial}

processes:
{result}: Process count
{result}

publicip:
{ip}: Public IP address
{location}: Location
{ip} {location}

shell:
{process-name}: Shell process name
{exe}: The first argument of the command line when running the shell
{exe-name}: Shell base name of arg0
{version}: Shell version
{pid}: Shell pid
{pretty-name}: Shell pretty name
{exe-path}: Shell full exe path
{tty}: Shell tty used
{process-name} {exe} {exe-name} {version} {pid} {pretty-name} {exe-path} {tty}

sound:
{is-main}: Is main sound device
{is-active}: Is active sound device
{name}: Device name
{volume-percentage}: Volume (in percentage num)
{identifier}: Identifier
{volume-percentage-bar}: Volume (in percentage bar)
{platform-api}: Platform API used
{is-main} {is-active} {name} {volume-percentage} {identifier} {volume-percentage-bar} {platform-api}

swap:
{used}: Used size
{total}: Total size
{percentage}: Percentage used (num)
{percentage-bar}: Percentage used (bar)
{name}: Name
{used} {total} {percentage} {percentage-bar} {name}

terminal:
{process-name}: Terminal process name
{exe}: The first argument of the command line when running the terminal
{exe-name}: Terminal base name of arg0
{pid}: Terminal pid
{pretty-name}: Terminal pretty name
{version}: Terminal version
{exe-path}: Terminal full exe path
{tty}: Terminal tty / pts used
{process-name} {exe} {exe-name} {pid} {pretty-name} {version} {exe-path} {tty}

terminalfont:
{combined}: Terminal font combined
{name}: Terminal font name
{size}: Terminal font size
{styles}: Terminal font styles
{combined} {name} {size} {styles}

terminalsize:
{rows}: Terminal rows
{columns}: Terminal columns
{width}: Terminal width (in pixels)
{height}: Terminal height (in pixels)
{rows} {columns} {width} {height}

terminaltheme:
{fg-color}: Terminal foreground color
{fg-type}: Terminal foreground type (Dark / Light)
{bg-color}: Terminal background color
{bg-type}: Terminal background type (Dark / Light)
{fg-color} {fg-type} {bg-color} {bg-type}

title:
{user-name}: User name
{host-name}: Host name
{home-dir}: Home directory
{exe-path}: Executable path of current process
{user-shell}: User's default shell
{user-name-colored}: User name (colored)
{at-symbol-colored}: @ symbol (colored)
{host-name-colored}: Host name (colored)
{full-user-name}: Full user name
{user-id}: UID (\*nix) / SID (Windows)
{pid}: PID of current process
{cwd}: CWD with home dir replaced by `~`
{user-name} {host-name} {home-dir} {exe-path} {user-shell} {user-name-colored} {at-symbol-colored} {host-name-colored} {full-user-name} {user-id} {pid} {cwd}

theme:
{theme1}: Theme part 1
{theme2}: Theme part 2
{theme1} {theme2}

tpm:
{version}: TPM device version
{description}: TPM general description
{version} {description}

uptime:
{days}: Days after boot
{hours}: Hours after boot
{minutes}: Minutes after boot
{seconds}: Seconds after boot
{milliseconds}: Milliseconds after boot
{boot-time}: Boot time in local timezone
{years}: Years integer after boot
{days-of-year}: Days of year after boot
{years-fraction}: Years fraction after boot
{formatted}: Formatted uptime
{days} {hours} {minutes} {seconds} {milliseconds} {boot-time} {years} {days-of-year} {years-fraction} {formatted}

users:
{name}: User name
{host-name}: Host name
{session-name}: Session name
{client-ip}: Client IP
{login-time}: Login Time in local timezone
{days}: Days after login
{hours}: Hours after login
{minutes}: Minutes after login
{seconds}: Seconds after login
{milliseconds}: Milliseconds after login
{years}: Years integer after login
{days-of-year}: Days of year after login
{years-fraction}: Years fraction after login
{name} {host-name} {session-name} {client-ip} {login-time} {days} {hours} {minutes} {seconds} {milliseconds} {years} {days-of-year} {years-fraction}

version:
{project-name}: Project name
{version}: Version
{version-tweak}: Version tweak
{build-type}: Build type (debug or release)
{sysname}: System name
{arch}: Architecture
{cmake-built-type}: CMake build type when compiling (Debug, Release, RelWithDebInfo, MinSizeRel)
{compile-time}: Date time when compiling
{compiler}: Compiler used when compiling
{libc}: Libc used when compiling
{project-name} {version} {version-tweak} {build-type} {sysname} {arch} {cmake-built-type} {compile-time} {compiler} {libc}

vulkan:
{driver}: Driver name
{api-version}: API version
{conformance-version}: Conformance version
{instance-version}: Instance version
{driver} {api-version} {conformance-version} {instance-version}

wallpaper:
{file-name}: File name
{full-path}: Full path
{file-name} {full-path}

weather:
{result}: Weather result
{result}

wm:
{process-name}: WM process name
{pretty-name}: WM pretty name
{protocol-name}: WM protocol name
{plugin-name}: WM plugin name
{version}: WM version
{process-name} {pretty-name} {protocol-name} {plugin-name} {version}

wifi:
{inf-desc}: Interface description
{inf-status}: Interface status
{status}: Connection status
{ssid}: Connection SSID
{bssid}: Connection BSSID
{protocol}: Connection protocol
{signal-quality}: Connection signal quality (percentage num)
{rx-rate}: Connection RX rate
{tx-rate}: Connection TX rate
{security}: Connection Security algorithm
{signal-quality-bar}: Connection signal quality (percentage bar)
{channel}: Connection channel number
{band}: Connection channel band in GHz
{inf-desc} {inf-status} {status} {ssid} {bssid} {protocol} {signal-quality} {rx-rate} {tx-rate} {security} {signal-quality-bar} {channel} {band}

wmtheme:
{result}: WM theme
{result}

zpool:
{name}: Zpool name
{guid}: Zpool guid
{state}: Zpool state
{size-used}: Size used
{size-allocated}: Size allocated
{size-total}: Size total
{used-percentage}: Size used percentage num
{allocated-percentage}: Size allocated percentage num
{frag-percentage}: Fragmentation percentage num
{used-percentage-bar}: Size used percentage bar
{allocated-percentage-bar}: Size allocated percentage bar
{frag-percentage-bar}: Fragmentation percentage bar
{is-readonly}: Is read-only
{name} {guid} {state} {size-used} {size-allocated} {size-total} {used-percentage} {allocated-percentage} {frag-percentage} {used-percentage-bar} {allocated-percentage-bar} {frag-percentage-bar} {is-readonly}

```

```

```
