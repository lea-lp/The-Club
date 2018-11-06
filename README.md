# The Club

> Pair programming avec @LisaLou & @LeaLp

## Lien vers le site en ligne <a href="https://the-clubb.herokuapp.com/">The Club !</a> 

---------------------------------

## Comment faire tourner les tests ?
Pour tester les modèles :
* ```rails test:models```  

Pour tester les views :
* ```rails test:controllers```  


## Erreurs rencontrées :  
* impossible d'afficher le flash danger avec ces lignes de code(pas de msg d'erreur):
  
```
  user = User.find_by(email: params[:session][:email].downcase)
     if user 
         #login
     else 
         flash.now[:danger] = "Invalid email"
         render 'new'
     end
 ```

* Ce qui n'est pas précisé dans la vidéo c'est que cette methode nécéssite un appel depuis le fichier.html.erb concerné. Placer ce qui suit dans application.html.erb dans le body :  

```<% if flash[:info]%>
     <p class="alert alert-info"><%=flash[:info]%></p>
   <% elsif flash[:danger]%>
     <p class="alert alert-danger"><%=flash[:danger]%></p>
   <% elsif flash[:success]%>
     <p class="alert alert-success"><%=flash[:success]%></p>
   <% end % >
    <%= yield %>```  
