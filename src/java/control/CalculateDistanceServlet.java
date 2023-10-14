package control;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import org.json.JSONArray;
import java.io.PrintWriter;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet("/CalculateDistanceServlet")
public class CalculateDistanceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String origin = request.getParameter("origin");
        String destination = request.getParameter("destination");

        // Thay YOUR_API_KEY bằng khóa API của b
        String apiKey = "YOUR_API_KEY";
        String apiUrl = "https://maps.googleapis.com/maps/api/distancematrix/json?origins="
                + origin + "&destinations=" + destination + "&key=" + apiKey;

        // Gửi yêu cầu HTTP đến Google Maps API và nhận phản hồi
        URL url = new URL(apiUrl);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");

        BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        String inputLine;
        StringBuilder content = new StringBuilder();
        while ((inputLine = in.readLine()) != null) {
            content.append(inputLine);
        }
        in.close();
        connection.disconnect();

        // Phân tích JSON response để lấy khoảng cách
        JSONObject jsonObject = new JSONObject(content.toString());
        JSONArray rows = jsonObject.getJSONArray("rows");
        JSONArray elements = rows.getJSONObject(0).getJSONArray("elements");
        JSONObject distanceObject = elements.getJSONObject(0).getJSONObject("distance");
        String distance = distanceObject.getString("text");

        // Hiển thị khoảng cách trong trình duyệt
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body><h1>Distance: " + distance + "</h1></body></html>");
    }
}
