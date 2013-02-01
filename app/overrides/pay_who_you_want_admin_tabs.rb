Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "pay_who_you_want_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:recipients, :url => spree.admin_recipients_path, :icon => 'icon-gift') %>",
                     :disabled => false)
