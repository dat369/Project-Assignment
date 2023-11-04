package model;

import org.json.JSONObject;
import org.json.JSONArray;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DecimalFormat;

public class FeeCalculator {

    public String calculateDistance(String origin, String destination) throws UnsupportedEncodingException {
        String apiKey = "AIzaSyBmY-JsFNoZ8ewWBqluGpXWa_low9ROdVI";
        String apiUrl = "https://maps.googleapis.com/maps/api/distancematrix/json?origins="
                + URLEncoder.encode(origin, "UTF-8") + "&destinations=" + URLEncoder.encode(destination, "UTF-8") + "&key=" + apiKey;

        try {
            URL url = new URL(apiUrl);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            StringBuilder content = new StringBuilder();
            try ( BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    content.append(inputLine);
                }
            }
            connection.disconnect();

            JSONObject jsonObject = new JSONObject(content.toString());
            if (jsonObject.has("rows")) {
                JSONArray rows = jsonObject.getJSONArray("rows");
                if (rows.length() > 0 && rows.getJSONObject(0).has("elements")) {
                    JSONArray elements = rows.getJSONObject(0).getJSONArray("elements");
                    if (elements.length() > 0 && elements.getJSONObject(0).has("distance")) {
                        JSONObject distanceObject = elements.getJSONObject(0).getJSONObject("distance");
                        return distanceObject.getString("text");
                    }
                }
            }
            // Trường hợp không tìm thấy dữ liệu khoảng cách
            return "Distance not found";
        } catch (Exception e) {
            // Xử lý lỗi
            e.printStackTrace();
            return "Error occurred";
        }
    }

    public float calculateShippingFee(char orderType, char orderDeliveryType, float orderVolume, String origin, String destination) throws UnsupportedEncodingException {
        float distance = convertDistanceToFloat(calculateDistance(origin, destination));

        float feeType = 0;
        float baseRate = 0;
        switch (orderType) {
            case 'F':
                if (orderVolume <= 10) {
                    feeType = 10000;
                } else {
                    feeType = 7500;
                }
                break;
            case 'B':
                if (orderVolume >= 20 && orderVolume <= 50) {
                    feeType = 10000;
                } else if (orderVolume > 50) {
                    feeType = 8000;
                } else {
                    feeType = 10000;
                }
                break;
            case 'C':
                feeType = 5000;
                break;
            default:
                break;
        }
        switch (orderDeliveryType) {
            case 'F':
                baseRate = 20000;
                break;
            case 'N':
                baseRate = 5000;
                break;
        }
        float fee = 0;
        if (distance < 20) {
            fee = distance * 1000;
        } else {
            fee = distance;
        }
        return feeType + baseRate + fee;
    }

    public float convertDistanceToFloat(String distanceString) {
        // Remove comma and " km" suffix
        String cleanedDistance = distanceString.replace(",", "").replace(" km", "");

        try {
            float distanceInFloat = Float.parseFloat(cleanedDistance);
            return distanceInFloat;
        } catch (NumberFormatException e) {
            // Handle invalid input gracefully, e.g., return a default value or throw an exception
            System.err.println("Invalid distance format: " + distanceString);
            return -1; // or throw a custom exception indicating invalid input
        }
    }

    public String formatMoney(float money) {
        DecimalFormat decimalFormat = new DecimalFormat("#,### VND");
        return decimalFormat.format(money);
    }
}
