extension Color {
    static var all: [Color] {
        return [
            //Label
            Color(name: "labelColor",category: .label, description: "The primary color to use for text labels."),
            Color(name: "secondaryLabelColor",category: .label, description: "The secondary color to use for text labels."),
            Color(name: "tertiaryLabelColor",category: .label, description: "The tertiary color to use for text labels."),
            Color(name: "quaternaryLabelColor",category: .label, description: "The quaternary color to use for text labels and separators."),

            // Text
            Color(name: "textColor",category: .text, description: "The color to use for text."),
            Color(name: "placeholderTextColor",category: .text, description: "The color to use for placeholder text in controls or text views."),
            Color(name: "selectedTextColor",category: .text, description: "The color to use for selected text."),
            Color(name: "textBackgroundColor",category: .text, description: "The color to use for the background area behind text."),
            Color(name: "selectedTextBackgroundColor",category: .text, description: "The color to use for the background of selected text."),
            Color(name: "keyboardFocusIndicatorColor",category: .text, description: "The color to use for the keyboard focus ring around controls."),
            Color(name: "unemphasizedSelectedTextColor",category: .text, description: "The color to use for selected text in an unemphasized context."),
            Color(name: "unemphasizedSelectedTextBackgroundColor",category: .text, description: "The color to use for the text background in an unemphasized context."),

            // Content
            Color(name: "linkColor",category: .content, description: "The color to use for links."),
            Color(name: "separatorColor",category: .content, description: "The color to use for separators between different sections of content."),
            Color(name: "selectedContentBackgroundColor",category: .content, description: "The color to use for the background of selected and emphasized content."),
            Color(name: "unemphasizedSelectedContentBackgroundColor",category: .content, description: "The color to use for selected and unemphasized content."),

            Color(name: "selectedMenuItemTextColor",category: .menu, description: "The color to use for the text in menu items."),

            Color(name: "gridColor", category: .table, description: "The color to use for the optional gridlines, such as those in a table view."),
            Color(name: "headerTextColor", category: .table, description: "The color to use for text in header cells in table views and outline views."),

            Color(name: "alternatingContentBackgroundColor[0]", category: .table, description: "The colors to use for alternating content, typically found in table views and collection views."),
            Color(name: "alternatingContentBackgroundColor[1]", category: .table, description: "The colors to use for alternating content, typically found in table views and collection views."),

            // Control
            Color(name: "controlAccentColor", category: .control, description: "The user's current accent color preference."),
            Color(name: "controlColor", category: .control, description: "The color to use for the flat surfaces of a control."),
            Color(name: "controlBackgroundColor", category: .control, description: "The color to use for the background of large controls, such as scroll views or table views."),
            Color(name: "controlTextColor", category: .control, description: "The color to use for text on enabled controls."),
            Color(name: "disabledControlTextColor", category: .control, description: "The color to use for text on disabled controls."),
            Color(name: "selectedControlColor", category: .control, description: "The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged."),
            Color(name: "selectedControlTextColor", category: .control, description: "The color to use for text in a selected control—that is, a control being clicked or dragged."),
            Color(name: "alternateSelectedControlTextColor", category: .control, description: "The color to use for text in a selected control."),
            Color(name: "scrubberTexturedBackground", category: .control, description: "The patterned color to use for the background of a scrubber control."),

            // Window
            Color(name: "windowBackgroundColor", category: .window, description: "The color to use for the window background."),
            Color(name: "windowFrameTextColor", category: .window, description: "The color to use for text in a window's frame."),
            Color(name: "underPageBackgroundColor", category: .window, description: "The color to use in the area beneath your window's views."),
            Color(name: "findHighlightColor", category: .window, description: "The highlight color to use for the bubble that shows inline search result values."),
            Color(name: "highlightColor", category: .window, description: "The color to use as a virtual light source on the screen."),
            Color(name: "shadowColor", category: .window, description: "The color to use for virtual shadows cast by raised objects on the screen."),

            // Deprecated
            Color(name: "alternateSelectedControlColor", category: .deprecated, description: "The system color used for the face of a selected control in a list or table."),
            Color(name: "controlHighlightColor", category: .deprecated, description: "The system color used for the highlighted bezels of controls."),
            Color(name: "controlLightHighlightColor", category: .deprecated, description: "The system color used for light highlights in controls."),
            Color(name: "controlShadowColor", category: .deprecated, description: "The system color used for the shadows dropped from controls."),
            Color(name: "controlDarkShadowColor", category: .deprecated, description: "The system color used for the dark edge of the shadow dropped from controls."),
            Color(name: "headerColor", category: .deprecated, description: "The system color used as the background color for header cells in table views and outline views."),
            Color(name: "knobColor", category: .deprecated, description: "The system color used for the flat surface of a slider knob that hasn’t been selected."),
            Color(name: "selectedKnobColor", category: .deprecated, description: "The system color used for the slider knob when it is selected."),
            Color(name: "scrollBarColor", category: .deprecated, description: "The system color used for scroll “bars”—that is, for the groove in which a scroller’s knob moves"),
            Color(name: "secondarySelectedControlColor", category: .deprecated, description: "The color used for selected controls in non-key views."),
            Color(name: "selectedMenuItemColor", category: .deprecated, description: "The color to use for the face of selected menu items."),
            Color(name: "windowFrameColor", category: .deprecated, description: "The system color used for window frames, except for their text."),
        ]
    }
}
