---
collection: blogs
---

# Blog Index!!

<%= for item <- @documents do %>
  <p><%= item.inner_content %></p>
<% end %>
