function clear_binaries
    ll | grep '\-rwx' | awk '{ print $9 }' | xargs rm
end
