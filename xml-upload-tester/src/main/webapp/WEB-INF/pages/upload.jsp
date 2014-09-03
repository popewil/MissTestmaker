<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
<form action="<%=request.getContextPath()%>/submit" method="post">
    <table>
        <tr>
            <td colspan="2">
                XML Upload
            </td>
        </tr>
        <tr>
            <td>
                <label for="actionSelect">Action</label>
            </td>
            <td>
                <select id="actionSelect" name="action">
                    <c:forEach items="${actions}" var="action">
                        <option value="${action.value}">${action.key}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label for="productSelect">Product</label>
            </td>
            <td>
                <select id="productSelect" name="product">
                    <c:forEach items="${products}" var="product">
                        <option value="${product.value}">${product.key}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>XML</td>
            <td>
                <textarea name="xml" rows="20" cols="30"></textarea>
            </td>
        </tr>
    </table>
    <button type="submit" name="submit" value="Submit"/>
</form>
</body>
</html>