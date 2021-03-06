# Web scrapper for [spidyquotes](https://github.com/mtkachenk0/spidyquotes) written on Ruby
```sh
./runner.sh -b=<BASE_URL> -r=<REMOTE_URL> -c=<COUNT> -d=<DRIVER>

Usage: scrapper.rb [options]
    -b, --base_url   URL             *Base url
    -r, --remote_url URL             *Remote host
    -d, --driver     chrome|firefox  Driver
```

Output example
```json
{
  "init": true,
  "driver#execute_script(window.alert())": true,
  "alert_raised": true,
  "alert": true,
  "alert_text": true,
  "alert_closed": true,
  "text_field": true,
  "set_text": true,
  "input": true,
  "submit_login": true,
  "link": true,
  "logout": true,
  "divs": true,
  "spans": true,
  "small": true,
  "div": true,
  "links": true,
  "element#text": true,
  "table": true,
  "trs": true,
  "select_list": true,
  "options": true,
  "select_value": true,
  "value": true,
  "select": true,
  "button_click": true,
  "goto": true,
  "title": true,
  "url": true,
  "driver": true,
  "html": true,
  "body": true,
  "input_text_field": true,
  "send_keys": true,
  "textarea": true,
  "set": true,
  "radio_set?": true,
  "radio_set": true,
  "checkboxes": true,
  "checkbox": true,
  "checkbox_set": true,
  "checkbox_clear": true,
  "js_dropdown_button": true,
  "js_dropdown_option_select": true,
  "label": true,
  "thead": true,
  "tbody": true,
  "element_by_css": true,
  "element_by_xpath": true,
  "overlapping_links_present?": true,
  "overlapping_links_exists?": true,
  "overlapping_links_visible?": true,
  "submit": true,
  "browser_text": true,
  "browser_title": true,
  "frame": true,
  "iframe": true,
  "iframe_html": true,
  "driver#execute_script(window.scrollBy())": true
}
```
