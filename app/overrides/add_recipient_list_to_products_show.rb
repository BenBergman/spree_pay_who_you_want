Deface::Override.new(:virtual_path => "spree/products/show",
                     :insert_after => "[data-hook='product_properties']",
					 :text => '<div data-hook="product_recipients">
                                 <% if @product.recipients.any? %>
                                   <h6 class="product-section-title"><%= t(\'recipients\')%></h6>
                                   <table id="product-properties" class="table-display" data-hook>
                                     <tbody>
                                       <% @product.recipients.each do |recipient| %>
									     <% css_class = cycle(\'even\', \'odd\', :name => "recipients") %>
                                         <tr class="<%= css_class %>">
                                           <td><strong><%= recipient.name %></strong></td>
                                           <td><%= recipient.description %></td>
                                         </tr>
                                       <% end %>
									   <% reset_cycle(\'recipients\') %>
                                     </tbody>
                                   </table>
							     <% end %>
							   </div>',
                     :name => "add_recipient_list_to_products_show")




#  <h6 class="product-section-title"><%= t('properties')%></h6>
#  <table id="product-properties" class="table-display" data-hook>
#    <tbody>
#      <% @product_properties.each do |product_property| %>
#        <% css_class = cycle('even', 'odd', :name => "properties") %>
#        <tr class="<%= css_class %>">
#          <td><strong><%= product_property.property.presentation %></strong></td>
#          <td><%= product_property.value %></td>
#        </tr>
#      <% end %>
#      <% reset_cycle('properties') %>
#    </tbody>
#  </table>
