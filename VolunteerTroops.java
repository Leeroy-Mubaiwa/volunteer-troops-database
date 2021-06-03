/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package volunteertroops;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

/**
 *
 * @author Leeroy Mubaiwa
 */
public class VolunteerTroops extends Application {
    
    @Override
    public void start(Stage stage) throws Exception {
         Parent diaryS = FXMLLoader.load(getClass().getResource("/volunteertroops/login_2.fxml"));
        Scene scene2 = new Scene(diaryS);
        Stage window = new Stage();
        window.initStyle(StageStyle.DECORATED);
        window.setScene(scene2);
        Image image = new Image("/volunteertroops/logo.jpg", false);
        window.getIcons().add(image);
        window.setResizable(false);
        window.setTitle("Volunteer Troops");
        window.show();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
