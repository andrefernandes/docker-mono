docker-mono
===========

CentOS 7 + Mono

Base CentOS image with Mono runtime.

### Useful scripts

* **build.sh** : builds the image locally (docker build)
* **runbash.sh** : convenient way to run commands on a new
container (fast-food, auto-destroy) or even to just
open a bash shell to play.

#### Some nice tests:

Open bash:

    ./runbash.sh
    bash-4.2# echo Wheeee

Show Mono version:

    ./runbash.sh mono -V
    Mono JIT compiler version 3.8.0 (tarball Tue Sep  9 15:04:47 UTC 2014)
    Copyright (C) 2002-2014 Novell, Inc, Xamarin Inc and Contributors. www.mono-project.com
    	TLS:           __thread
    	SIGSEGV:       altstack
    	Notifications: epoll
    	Architecture:  amd64
    	Disabled:      none
    	Misc:          softdebug 
    	LLVM:          supported, not enabled.
    	GC:            sgen


