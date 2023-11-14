{
  xdg.configFile."heroic/themes/catppuccin-frappe.css".text = ''
    body.catppuccin-frappe {
      --accent: #8caaee;
      --accent-overlay: #ca9ee6;
      --navbar-accent: #c6d0f5;
      --background: #303446;
      --body-background: var(--background);
      --background-darker: var(--background);
      --current-background: var(--body-background);
      --navbar-background: #232634;
      --navbar-active-background: #626880;
      --gradient-body-background: linear-gradient(
        90deg,
        var(--background-darker) -32px,
        var(--body-background) 64px,
        var(--body-background) 100%
      );
      --input-background: #414559;
      --modal-background: var(--body-background);
      --modal-border: var(--accent);
      --success: #a6d189;
      --success-hover: #81c8be;
      --primary: #8caaee;
      --primary-hover: #85c1dc;
      --danger: #e78284;
      --text-log: #e5c890;
      --text-title: #8caaee;
      --text-default: #c6d0f5;
      --text-secondary: #a5adce;
      --osk-background: var(--body-background);
      --osk-button-background: var(--input-background);
      --osk-button-border: var(--navbar-background);
      --action-icon: var(--text-default);
      --action-icon-hover: var(--accent-overlay);
      --action-icon-active: var(--accent);
    }
'';
}