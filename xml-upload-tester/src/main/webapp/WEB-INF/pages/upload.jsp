<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head><title>Submit XML for processing</title>
    <link href="<%=request.getContextPath()%>/css/style.css"/>
</head>
<body>
<style>
    td.center {
        text-align: center;
    }

    td.label {
        width: 200px;
        vertical-align: top;
    }

    td.value {
        width: 500px;
    }

    td {
        padding: 10px;
        border-bottom: 1px dotted gray;
    }

    td.no-border {
        padding: 10px;
        border-bottom: 0px;
    }

    table {
        width: 750px;
    }
</style>
<form:form action="submit" method="post" modelAttribute="request" enctype="multipart/form-data">
    <table>
        <tr>
            <td colspan="2" class="center">
                <h1>XML Upload</h1>
            </td>
        </tr>
        <tr>
            <td class="label">
                <label for="actionSelect">Action</label>
            </td>
            <td class="value">
                <select id="actionSelect" name="action">
                    <c:forEach items="${actions}" var="action">
                        <option value="${action.value}">${action.key}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td class="label">
                <label for="productSelect">Product</label>
            </td>
            <td class="value">
                <select id="productSelect" name="product">
                    <c:forEach items="${products}" var="product">
                        <option value="${product.value}">${product.key}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td class="label">
                XML
            </td>
            <td class="value">
                <input type="file" name="file">
                <br><br>OR<br><br>
                <textarea name="xml" rows="20" cols="60"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="no-border center">
                <button type="submit" name="submit" value="Submit">Submit</button>
                <button type="reset" name="reset" value="Reset">Reset</button>
            </td>
        </tr>
    </table>
    <br>
</form:form>
</body>
</html>