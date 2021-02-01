{
  urgency_low = {
    background = "#000000";
    foreground = "#ffffff";
    timeout = 10;
  };
  urgency_normal = {
    background = "#212121";
    foreground = "#ffffff";
    timeout = 10;
  };
  urgency_critical = {
    background = "#fbc02d";
    foreground = "#000000";
    timeout = 0;
  };

  global = {
    frame_color = "#212121";
    frame_width = 5;

    # The format of the message.  Possible variables:
    #   %a  appname
    #   %s  summary
    #   %b  body
    #   %i  iconname (including its path)
    #   %I  iconname (without its path)
    #   %p  progress value if set ([  0%] to [100%]) or nothing
    format = "%a\n<b>%s</b>\n%b\n%p";

    # The geometry of the window. Format: [{width}]x{height}[+/-{x}+/-{y}]
    # The height = number of notifications, all other variables are px
    # Omit width, provide height for full-screen width notifications
    # If width is 0, window will fit to longest message
    # Positive x value is measured from the left of the screen, negative x is measured from the right
    # Positive y value is measured from the top of the screen
    geometry = "300x3-16+75";

    vertical_alignment = "top";
    corner_radius = 0;
    font = "Roboto 10";
    markup = "full";
    allow_markup = true;
    plain_text = false;             # Treat message as plain text
    sort = true;                  # Sort messages by urgency
    indicate_hidden = true;       # Show how many messages are currently hidden (see geometry)
    alignment = "left";          # Align text left/center/right
    bounce_freq = 0;             # Frequency to bounce text back and forth if it is longer than the window width (conflicts with "word_wrap")
    show_age_threshold = 60;     # Show if message is older than x seconds (-1 to disable)
    word_wrap = true;             # Split notifications into multiple lines if they don't fit into geometry
    ignore_newline = false;         # Ignore "\n"
    transparency = 0;           # The transparency of the window. 0 (opaque) to 100 (transparent) - requires compositing window manager (xcompmgr, compiz, compton, etc)
    shrink = false;                 # Shrink window if it's smaller than the width (ignored if width is 0)
    monitor = 0;                 # Display notifications on the monitor indicated (0 is default)
    follow = "keyboard";               # Follow mouse/keyboard/none
    show_indicators = false;        # Display indicators for URLs (U) and actions (A)
    line_height = 0;             # The spacing between lines (forced to height of font at minimum)
    notification_height = 70;     # The height of the entire notification (forced to height of font height and padding at minimum)
    separator_height = 8;        # Space in pixels between two notifications
    padding = 8;                 # Padding between text and separator
    horizontal_padding = 8;      # Horizontal padding
    separator_color = "frame";     # Color for separator: auto/foreground/frame/X color
    icon_position = "left";        # Align icons left/right/off
    min_icon_size = 16;
    max_icon_size = 32;

    idle_threshold = 120;        # Don't remove messages if the user is idle (no mouse or keyboard input) for longer than idle_threshold seconds
    sticky_history = true;        # Make notifications remain until clicked on (yes) or timeout as normal (no) when recalled from history
    history_length = 20;         # Maximum amount of notifications kept in history

    # icon_path = "~/.config/icons/default/16x16";
    startup_notification = false;
    # dmenu = /usr/bin/dmenu -p dunst:
    browser = "firefox -new-tab";
  };
}
