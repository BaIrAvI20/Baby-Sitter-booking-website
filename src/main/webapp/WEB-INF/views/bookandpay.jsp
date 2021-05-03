<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body {
  background-image: url('/images/payment.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:100% 100%;
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

.container {
	width:30%;
  background-color: rgba(0,0,0,0.3);
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;

}

input[type=text] {
  width: 95%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
}

.icon{
  margin-bottom: 20px;
  padding: 7px 0;
}

.pp {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}
</style>
</head>
<body>

<h2 style="padding-left:6%"><span style="color:#082081;">HELP</span><span style="color:blue;"> ME</span><span style="color:red;"> ASSIST </span><span style="color:orange;">YOU</span></h2>
    <div class="container">
      <form action="success">
            <label>Accepted Cards</label>
            <div>
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div><br>
            <label>Name on Card</label>
            <input type="text" placeholder="Enter name on card" required>
            <label for="ccnum">Credit card number</label>
            <input type="text" placeholder="1111-2222-3333-4444">
			 <label for="cname">Amount</label>
            <input type="text" placeholder="Enter amount" value="${pri.price}">
            <label for="expmonth">Exp Month</label>
            <input type="text" placeholder="Enter expiry month on card" required>
            <label>Exp Year</label>
            <input type="text"placeholder="Enter expiry year on card" required>
          	<label for="cvv">CVV</label>
            <input type="text" placeholder="352" required>
            <a href="success"><input type="submit" value="Proceed to Payment" class="pp"></a> 
          </form>
         </div>
</body>
</html>
