package model;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.apache.commons.logging.Log;

import javax.sound.sampled.Line;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;


public class FixerRequest {
    private final String URL = "http://data.fixer.io/api/";
    private final String KEY = "ec1c63ab88e5cfb3a65517cada624574"; //Хранить ключик в исходниках так себе. Но для наших целей подойдет.
    private static final Logger logger = Logger.getLogger(FixerRequest.class.getName());


    public Response getCustomKey(String customKey) {
        String request = URL + "latest?access_key=" + customKey;
        logger.log(Level.INFO, request);
        return RestAssured.get(request);
    }

    public Response getLatest(Map<String, String> symbols, String base) {
        StringBuilder path = new StringBuilder(URL + "latest?access_key=" + KEY);
        addSymbols(symbols, path);
        if (base != null) path = path.append("&base=").append(base);
        String request = path.toString();
        logger.log(Level.INFO, request);
        return RestAssured.get(request);
    }

    public Response getLatest() {
        String request = URL + "latest?access_key=" + KEY;
        logger.log(Level.INFO, request);
        return RestAssured.get(request);
    }

    public Response getDate(String date, Map<String, String> symbols, String base) {
        StringBuilder path = new StringBuilder(URL + date + "?access_key=" + KEY);
        addSymbols(symbols, path);
        if (base != null) path = path.append("&base=").append(base);
        String request = path.toString();
        logger.log(Level.INFO, request);
        return RestAssured.get(request);
    }

    public Response getDate(String date) {
        String request = URL + date + "?access_key=" + KEY;
        logger.log(Level.INFO, request);
        return RestAssured.get(request);
    }

    private void addSymbols(Map<String, String> symbols, StringBuilder path) {
        if (symbols != null) {
            if (symbols.size() > 0) {
                StringBuilder symbolsString = new StringBuilder("&symbols=");
                Set<String> symbolsSet = symbols.keySet();
                String previousSeparator = "";
                for (String aSymbolsSet : symbolsSet) {
                    symbolsString.append(previousSeparator).append(aSymbolsSet);
                    previousSeparator = ",";
                }
                path.append(symbolsString);
            }
        }
    }
}
