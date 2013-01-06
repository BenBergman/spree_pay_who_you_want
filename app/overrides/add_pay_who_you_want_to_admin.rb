Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
					 :text => '<li<%== \' class="active"\' if current == \'Pay Who You Want\' %>>
                                 <%= link_to_with_icon \'icon-money\', t(:pay_who_you_want), admin_product_product_properties_url(@product) %>
                               </li>',
							   # Alternatively, use icon-bar-chart
                     :name => "add_pay_who_you_want_to_admin")
