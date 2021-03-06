<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta charset="UTF-8">
        <title>Admin Options</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div id="container">
            <header>
                <div id="headerArea">
                    <h2>
                        <c:if test="${loggedIn != null}">
                            <p>Welcome <c:out value='${loggedIn.firstName}' /></p>
                            <p><a href="Controller?action=adminOptions" class="adminMode">Admin mode</a></p>
                        </c:if>
                    </h2>
                    <h1>
                        <span>Prato Webshop</span>
                    </h1>
                </div>
                <nav>
                    <ul>
                        <li><a href="Controller?action=index">Home</a></li>
                        <li><a href="Controller?action=productOverview">Products</a></li>
                        <c:if test="${loggedIn != null}"><li><a href="Controller?action=addProductPage">Add Product</a></li></c:if>
                        <c:if test="${loggedIn == null}"><li></li></c:if>
                        <c:if test="${loggedIn != null}"><li><a href="Controller?action=signUp">Add admin</a></li></c:if>
                        <c:if test="${loggedIn == null}"><li></li></c:if>
                        <li id="cartLi"><a href="Controller?action=cart" id="cartLink"><img src="images/ShoppingCart.png" id="cartImage"></a></li>
                    </ul>
                </nav>
                <h2>
                    Admin Options
                </h2>
            </header>
            <c:if test="${loggedIn != null}">
                <main>
                    <p><a href="Controller?action=checkPas&personId=<c:out value='${loggedIn.userid}'/>">Check password</a></p>
                    <p><a href="Controller?action=deletePerson&userid=<c:out value="${loggedIn.userid}"/>">Delete admin account</a></p>
                    <p><a href="Controller?action=logout">Logout</a></p>
                    <c:if test="${addAdminSucces != null}">
                        <p id="positive">Added admin</p>
                    </c:if>
                </main>
            </c:if>
            <c:if test="${loggedIn == null}">
                <p class="alert-danger2">Can't access page: insufficient rights.</p>
            </c:if>
            <footer>
                &copy; Testing, UC Leuven-Limburg
            </footer>
        </div>
    </body>
</html>
