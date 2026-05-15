
Put this in /usr/share/X11/xkb/symbols/se
partial alphanumeric_keys
xkb_symbols "customcolemak" {
    include "se(basic)"
    include "level3(ralt_switch)"
    name[Group1]="customcolemak";

        // tor row
        key <AD03> { [ f, F ] };
	    key <AD04> { [ p, P ] };
	    key <AD05> { [ g, G ] };
	    key <AD06> { [ j, J ] };
	    key <AD07> { [ l, L ] };
	    key <AD08> { [ u, U ] };
	    key <AD09> { [ y, Y ] };
	    key <AD10> { [ odiaeresis, Odiaeresis ] };
	    key <AD11> { [ aring, Aring ] };

        // home row
        key <AC01> { [ a, A, asciicircum, asciitilde] };
        key <AC02> { [ r, R, plus, plus ] };
        key <AC03> { [ s, S, equal, equal ] };
        key <AC04> { [ t, T, braceleft, braceright] };
        key <AC05> { [ d, D, parenleft, parenleft ] };
        key <AC06> { [ h, H, Left, parenright] };
        key <AC07> { [ n, N, Down, ntilde ] };
        key <AC08> { [ e, E, Up, colon ] };
        key <AC09> { [ i, I, Right, semicolon ] };
        key <AC10> { [ o, O, dollar ] };
        // bottom row
        key <AB04> { [ v, V, slash, question] };    // v → / (and ? on Shift+AltGr)
        key <AB05> { [ b, B, percent, question] }; // b → %
        key <AB06> { [ k, K, backslash ] };


};


Then add the variant to /usr/share/X11/xkb/rules/evdev.xml under variants as

         <variant>
          <configItem>
            <name>customcolemak</name>
            <description>customcolemak</description>
          </configItem>
        </variant>
        <variant>

Then go to keybinds and set caps lock to be swapped with escape
