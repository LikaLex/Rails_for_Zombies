#Challenge 1
#Print out the zombie's name and graveyard
<% zombie = Zombie.first %>
    <h1><%= zombie.name %></h1>
    <p>
      <%=zombie.graveyard %>
    </p>

#Challenge 2
#Print out the zombie's name and graveyard
<% zombie = Zombie.first %>
    <p>
<%= link_to zombie.name, zombie_path(zombie) %>
    </p>

#Challenge 3
#Use an each block to print the names of all the zombies.
    <% zombies = Zombie.all %>
    <ul>
<% zombies.each do |zombie| %>
        <%=zombie.name %>
<%end%>
</ul>

#Challenge 4
#In the each block, if a zombie has more than one tweet, print out SMART ZOMBIE.
  <% zombies = Zombie.all %>
  <ul>
    <% zombies.each do |zombie| %>
      <li>
        <%=zombie.name%>
         <% if zombie.tweets.count > 1 %>
          <%="SMART ZOMBIE"%>
        <% end %>
      </li>
  <% end %>
  </ul>

#Challenge 5
#In the each block, make the zombie's name link to its edit page.

  <% zombies = Zombie.all %>
  <ul>
    <% zombies.each do |zombie| %>
      <li>
        <%= zombie.name %>
        <%= link_to zombie.name, edit_zombie_path(zombie) %>
      </li>
<% end %>
  </ul>