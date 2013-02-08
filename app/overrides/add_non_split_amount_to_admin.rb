Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :insert_top => "[data-hook='admin_product_form_right']",
                     :text => '<%= f.field_container :non_split_amount do %>
                                 <%= f.label :non_split_amount, raw(t(:non_split_amount) + content_tag(:span, \' *\', :class => "required")) %>
                                 <%= f.text_field :non_split_amount, :value => number_to_currency(@product.non_split_amount, :unit => \'\') %>
                                 <%= f.error_message_on :non_split_amount %>
                               <% end %>',
                     :name => "add_non_split_amount_to_admin")
