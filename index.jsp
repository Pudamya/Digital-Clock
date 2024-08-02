        <%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    String url = "jdbc:mysql://localhost:3306/DigitalClockDB";
    String user = "root";
    String password = "";

    ResultSet resultSet = null;
    Statement statement = null;
    Connection conn = null;
    String currentDate = null;
    String currentTime = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        statement = conn.createStatement();
        resultSet = statement.executeQuery("SELECT CURRENT_TIMESTAMP()");

        if (resultSet.next()) {
            Timestamp timestamp = resultSet.getTimestamp(1);
            currentDate = new SimpleDateFormat("yyyy-MM-dd E").format(timestamp);
            currentTime = new SimpleDateFormat("hh:mm:ss a").format(timestamp);
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (resultSet != null) try {
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (statement != null) try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (conn != null) try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digital Clock</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="clock-container">
    <div id="clock">
        <div id="date"></div>
        <div id="time"></div>
    </div>
</div>
<script src="js/script.js"></script>
</body>
</html>
