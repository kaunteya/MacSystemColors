import AppKit

extension Color {
    static var elementColors: [Color] {
        return [
            //Label
            Color(color: .labelColor, name: "labelColor",category: .label, description: "The primary color to use for text labels."),
            Color(color: .secondaryLabelColor, name: "secondaryLabelColor",category: .label, description: "The secondary color to use for text labels."),
            Color(color: .tertiaryLabelColor, name: "tertiaryLabelColor",category: .label, description: "The tertiary color to use for text labels."),
            Color(color: .quaternaryLabelColor, name: "quaternaryLabelColor",category: .label, description: "The quaternary color to use for text labels and separators."),

            // Text
            Color(color: .textColor, name: "textColor",category: .text, description: "The color to use for text."),
            Color(color: .placeholderTextColor, name: "placeholderTextColor",category: .text, description: "The color to use for placeholder text in controls or text views."),
            Color(color: .selectedTextColor, name: "selectedTextColor",category: .text, description: "The color to use for selected text."),
            Color(color: .textBackgroundColor, name: "textBackgroundColor",category: .text, description: "The color to use for the background area behind text."),
            Color(color: .selectedTextBackgroundColor, name: "selectedTextBackgroundColor",category: .text, description: "The color to use for the background of selected text."),
            Color(color: .keyboardFocusIndicatorColor, name: "keyboardFocusIndicatorColor",category: .text, description: "The color to use for the keyboard focus ring around controls."),
            Color(color: .unemphasizedSelectedTextColor, name: "unemphasizedSelectedTextColor",category: .text, description: "The color to use for selected text in an unemphasized context."),
            Color(color: .unemphasizedSelectedTextBackgroundColor, name: "unemphasizedSelectedTextBackgroundColor",category: .text, description: "The color to use for the text background in an unemphasized context."),

            // Content
            Color(color: .linkColor, name: "linkColor",category: .content, description: "The color to use for links."),
            Color(color: .separatorColor, name: "separatorColor",category: .content, description: "The color to use for separators between different sections of content."),
            Color(color: .selectedContentBackgroundColor, name: "selectedContentBackgroundColor",category: .content, description: "The color to use for the background of selected and emphasized content."),
            Color(color: .unemphasizedSelectedContentBackgroundColor, name: "unemphasizedSelectedContentBackgroundColor",category: .content, description: "The color to use for selected and unemphasized content."),

            Color(color: .selectedMenuItemTextColor, name: "selectedMenuItemTextColor",category: .menu, description: "The color to use for the text in menu items."),

            Color(color: .gridColor, name: "gridColor", category: .table, description: "The color to use for the optional gridlines, such as those in a table view."),
            Color(color: .headerTextColor, name: "headerTextColor", category: .table, description: "The color to use for text in header cells in table views and outline views."),

            Color(color: NSColor.alternatingContentBackgroundColors[0], name: "alternatingContentBackgroundColor[0]", category: .table, description: "The colors to use for alternating content, typically found in table views and collection views."),
            Color(color: NSColor.alternatingContentBackgroundColors[1], name: "alternatingContentBackgroundColor[1]", category: .table, description: "The colors to use for alternating content, typically found in table views and collection views."),

            // Control
            Color(color: .controlAccentColor, name: "controlAccentColor", category: .control, description: "The user's current accent color preference."),
            Color(color: .controlColor, name: "controlColor", category: .control, description: "The color to use for the flat surfaces of a control."),
            Color(color: .controlBackgroundColor, name: "controlBackgroundColor", category: .control, description: "The color to use for the background of large controls, such as scroll views or table views."),
            Color(color: .controlTextColor, name: "controlTextColor", category: .control, description: "The color to use for text on enabled controls."),
            Color(color: .disabledControlTextColor, name: "disabledControlTextColor", category: .control, description: "The color to use for text on disabled controls."),
            Color(color: .selectedControlColor, name: "selectedControlColor", category: .control, description: "The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged."),
            Color(color: .selectedControlTextColor, name: "selectedControlTextColor", category: .control, description: "The color to use for text in a selected control—that is, a control being clicked or dragged."),
            Color(color: .alternateSelectedControlTextColor, name: "alternateSelectedControlTextColor", category: .control, description: "The color to use for text in a selected control."),
            Color(color: .scrubberTexturedBackground, name: "scrubberTexturedBackground", category: .control, description: "The patterned color to use for the background of a scrubber control."),

            // Window
            Color(color: .windowBackgroundColor, name: "windowBackgroundColor", category: .window, description: "The color to use for the window background."),
            Color(color: .windowFrameTextColor, name: "windowFrameTextColor", category: .window, description: "The color to use for text in a window's frame."),
            Color(color: .underPageBackgroundColor, name: "underPageBackgroundColor", category: .window, description: "The color to use in the area beneath your window's views."),
            Color(color: .findHighlightColor, name: "findHighlightColor", category: .window, description: "The highlight color to use for the bubble that shows inline search result values."),
            Color(color: .highlightColor, name: "highlightColor", category: .window, description: "The color to use as a virtual light source on the screen."),
            Color(color: .shadowColor, name: "shadowColor", category: .window, description: "The color to use for virtual shadows cast by raised objects on the screen."),

            // Deprecated
            Color(color: .alternateSelectedControlColor, name: "alternateSelectedControlColor", category: .deprecated, description: "The system color used for the face of a selected control in a list or table."),
            Color(color: .controlHighlightColor, name: "controlHighlightColor", category: .deprecated, description: "The system color used for the highlighted bezels of controls."),
            Color(color: .controlLightHighlightColor, name: "controlLightHighlightColor", category: .deprecated, description: "The system color used for light highlights in controls."),
            Color(color: .controlShadowColor, name: "controlShadowColor", category: .deprecated, description: "The system color used for the shadows dropped from controls."),
            Color(color: .controlDarkShadowColor, name: "controlDarkShadowColor", category: .deprecated, description: "The system color used for the dark edge of the shadow dropped from controls."),
            Color(color: .headerColor, name: "headerColor", category: .deprecated, description: "The system color used as the background color for header cells in table views and outline views."),
            Color(color: .knobColor, name: "knobColor", category: .deprecated, description: "The system color used for the flat surface of a slider knob that hasn’t been selected."),
            Color(color: .selectedKnobColor, name: "selectedKnobColor", category: .deprecated, description: "The system color used for the slider knob when it is selected."),
            Color(color: .scrollBarColor, name: "scrollBarColor", category: .deprecated, description: "The system color used for scroll “bars”—that is, for the groove in which a scroller’s knob moves"),
            Color(color: .secondarySelectedControlColor, name: "secondarySelectedControlColor", category: .deprecated, description: "The color used for selected controls in non-key views."),
            Color(color: .selectedMenuItemColor, name: "selectedMenuItemColor", category: .deprecated, description: "The color to use for the face of selected menu items."),
            Color(color: .windowFrameColor, name: "windowFrameColor", category: .deprecated, description: "The system color used for window frames, except for their text."),
        ]
    }

    static var standardColors: [Color] {
        return [
            Color(color: .systemBlue, name: "systemBlue",category: .label ,description: "Returns a color object for blue that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemBrown, name: "systemBrown",category: .label ,description: "Returns a color object for brown that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemGray, name: "systemGray",category: .label ,description: "Returns a color object for gray that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemGreen, name: "systemGreen",category: .label ,description: "Returns a color object for green that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemOrange, name: "systemOrange",category: .label ,description: "Returns a color object for orange that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemPink, name: "systemPink",category: .label ,description: "Returns a color object for pink that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemPurple, name: "systemPurple",category: .label ,description: "Returns a color object for purple that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemRed, name: "systemRed",category: .label ,description: "Returns a color object for red that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .systemYellow, name: "systemYellow",category: .label ,description: "Returns a color object for yellow that automatically adapts to vibrancy and accessibility settings."),
            Color(color: .clear, name: "clear",category: .label ,description: "Returns a color object whose grayscale and alpha values are both 0.0."),
            Color(color: .black, name: "black",category: .label ,description: "Returns a color object whose grayscale value is 0.0 and whose alpha value is 1.0."),
            Color(color: .blue, name: "blue",category: .label ,description: "Returns a color object whose RGB value is 0.0, 0.0, 1.0 and whose alpha value is 1.0."),
            Color(color: .brown, name: "brown",category: .label ,description: "Returns a color object whose RGB value is 0.6, 0.4, 0.2 and whose alpha value is 1.0."),
            Color(color: .cyan, name: "cyan",category: .label ,description: "Returns a color object whose RGB value is 0.0, 1.0, 1.0 and whose alpha value is 1.0."),
            Color(color: .darkGray, name: "darkGray",category: .label ,description: "Returns a color object whose grayscale value is 1/3 and whose alpha value is 1.0."),
            Color(color: .gray, name: "gray",category: .label ,description: "Returns a color object whose grayscale value is 0.5 and whose alpha value is 1.0."),
            Color(color: .green, name: "green",category: .label ,description: "Returns a color object whose RGB value is 0.0, 1.0, 0.0 and whose alpha value is 1.0."),
            Color(color: .lightGray, name: "lightGray",category: .label ,description: "Returns a color object whose grayscale value is 2/3 and whose alpha value is 1.0."),
            Color(color: .magenta, name: "magenta",category: .label ,description: "Returns a color object whose RGB value is 1.0, 0.0, 1.0 and whose alpha value is 1.0."),
            Color(color: .orange, name: "orange",category: .label ,description: "Returns a color object whose RGB value is 1.0, 0.5, 0.0 and whose alpha value is 1.0."),
            Color(color: .purple, name: "purple",category: .label ,description: "Returns a color object whose RGB value is 0.5, 0.0, 0.5 and whose alpha value is 1.0."),
            Color(color: .red, name: "red",category: .label ,description: "Returns a color object whose RGB value is 1.0, 0.0, 0.0 and whose alpha value is 1.0."),
            Color(color: .white, name: "white",category: .label ,description: "Returns a color object whose grayscale and alpha values are both 1.0."),
            Color(color: .yellow, name: "yellow",category: .label ,description: "Returns a color object whose RGB value is 1.0, 1.0, 0.0 and whose alpha value is 1.0."),
        ]
    }
}


