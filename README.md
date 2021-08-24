# Seal's Gentoo overlay

Fixing random stuff here, as well as useful utils and other ebuild work.

## Adding the repository

Add the following line to ``/etc/layman/layman.cfg``'s Overlays section:

```
https://github.com/seal331/gentoo-overlay/raw/master/repositories.xml
```

Then execute:

```
layman -f
layman -a seal331-gentoo
```

## Syncing the repository

Easy, just execute ``layman -s seal331-gentoo``.