package controller;
import java.io.Writer;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.stream.JsonWriter;


//Classe criada para serializar datas personalizada no JSON enviando com body das responses
public class JsonConfig {

    private static final SimpleDateFormat DATA_FORMATADA = new SimpleDateFormat("dd/MM/yyyy");

    public static <T> GsonBuilder getGsonBuilder() {

        GsonBuilder builder = new GsonBuilder();

        //Define Comportamento Ao Deserializar uma Data
        builder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {

            //Deserializa o Seguinte formato 07/03/2017 17:26:01 em java.util.Date
            //Exemplo de Uso: Gson gson = JsonConfig.getGsonBuilder().create(); Usuario usuario = gson.fromJson(stringJson, Usuario.class);
            @Override
            public Date deserialize(JsonElement json, Type typeOfT,
                    JsonDeserializationContext context) throws JsonParseException {

                try {
                    return DATA_FORMATADA.parse(json.getAsString()); //Retorna um Date com a data formatada
                } catch (ParseException e) {
                    return null;
                }
            }
        });

        //Define o Comportamento ao Serializar uma Data
        builder.registerTypeAdapter(Date.class, new JsonSerializer<Date>() {

            //Serializa o Formato de java.util.Date para 07/03/2017 17:26:01
            // Exemplo de Uso: Gson gson = JsonConfig.getGsonBuilder().create(); String usuariojson = gson.toJson(objetoUsuario);
            @Override
            public JsonElement serialize(Date data, Type typeOft, JsonSerializationContext context) {
                try {    
                    String datajson = DATA_FORMATADA.format(data); // converte a data em string no formato adequado            
                    return new JsonPrimitive(datajson); //tranforma a string em um tipo Json primitivo
                }catch (Exception e) {
                    return null;
                }

            }
        });

        return builder;
    }
}