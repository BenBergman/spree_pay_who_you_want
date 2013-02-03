Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
					 :text => '<li<%== \' class="active"\' if current == \'Recipients\' %>>
                                 <%= link_to_with_icon \'icon-money\', t(:recipients), admin_product_product_recipients_url(@product) %>
                               </li>',
							   # Alternatively, use icon-bar-chart
                     :name => "add_recipients_to_admin_product")
