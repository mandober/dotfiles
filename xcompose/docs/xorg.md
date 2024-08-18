# X-Keyboard

- dir: `/usr/share/X11/xkb/`
- X11 color names: `/usr/share/X11/rgb.txt`
- `/usr/share/X11/xman.help`
- `xman` x-system manual browser
- `xmodmap` utility for modifying keymaps and pointer button mappings in X


*rules*
`/usr/share/X11/xkb/rules/README`
This directory lists sets of rules which can be used to obtain an exact XKB configuration.

*types*
`/usr/share/X11/xkb/types/README`
The types component of a keyboard mapping specifies the key types that can be associated with the various keyboard keys. The types component can optionally contain also real modifier bindings and symbolic names for one or more **virtual modifiers**.

*keycodes*
`/usr/share/X11/xkb/keycodes/README`
The keycodes component of a keyboard mapping specifies the range and interpretation of the raw keycodes reported by the device. It sets the keycodes symbolic name, the minimum and maximum legal codes for the keyboard, and the symbolic name for each key. The keycodes component might also contain aliases for some keys, symbolic names for some indicators and a description of which indicators are physically present.

*geometry*
`/usr/share/X11/xkb/geometry/README`
The geometry component of a keyboard mapping specifies primarily the geometry of the keyboard. It contains the geometry symbolic name and the keyboard geometry description. The geometry component might also contain aliases for some keys or symbolic names for some indicators and might affect the set of indicators that are physically present. Key aliases defined in the geometry component of a keyboard mapping override those defined in the keycodes component.

*compat*
`/usr/share/X11/xkb/compat/README`
The core protocol interpretation of keyboard modifiers does not include direct support for multiple keyboard groups, so `XKB` reports the effective keyboard group to XKB-aware clients using some of the reserved bits in the state field of some core protocol events. This modified state field would not be interpreted correctly by XKB-unaware clients, so XKB provides a group compatibility mapping which remaps the keyboard group into a core modifier mask that has similar effects, when possible. XKB maintains 3 compatibility state components that are used to make XKB-unaware clients (see Note) work as well as possible: 1. The compatibility state which corresponds to the effective modifier and effective group state. 2. The compatibility lookup state which is the core-protocol equivalent of the state. 3. The compatibility grab state which is the nearest core-protocol equivalent of the grab state. Compatibility states are essentially the corresponding XKB states, but with the keyboard group possibly encoded as one or more modifiers. Modifiers that correspond to each keyboard group are described in this group compatibility map. Note: The implementation of XKB invisibly extends the X library to use the keyboard extension if it is present. That means, clients that use library or toolkit routines to interpret keyboard events automatically use all of XKB's features; clients that directly interpret the state field of core-protocol events or the keymap directly may be affected by some of the XKB differences. Thus most clients can take all advantages without modification but it also means that XKB state can be reported to clients that have not explicitly requested the keyboard extension.
