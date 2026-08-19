// // package com.fdl.controller;

// // import org.springframework.beans.factory.annotation.Value;
// // import org.springframework.http.HttpStatus;
// // import org.springframework.http.ResponseEntity;
// // import org.springframework.web.bind.annotation.*;
// // import org.springframework.web.multipart.MultipartFile;

// // import java.io.IOException;
// // import java.nio.file.*;
// // import java.util.HashMap;
// // import java.util.Map;
// // import java.util.UUID;

// // @RestController
// // @RequestMapping("/api/upload")
// // public class UploadCtrl {

// //     @Value("${app.upload.dir}")
// //     private String uploadDir;

// //     @PostMapping
// //     public ResponseEntity<?> upload(@RequestParam("file") MultipartFile file) {

// //         if (file.isEmpty()) {
// //             return ResponseEntity.badRequest().body(Map.of("message", "Fichier vide."));
// //         }

// //         try {
// //             Path dirPath = Paths.get(uploadDir);
// //             if (!Files.exists(dirPath)) {
// //                 Files.createDirectories(dirPath);
// //             }

// //             String originalName = file.getOriginalFilename();
// //             String extension = "";
// //             if (originalName != null && originalName.contains(".")) {
// //                 extension = originalName.substring(originalName.lastIndexOf("."));
// //             }

// //             String filename = UUID.randomUUID() + extension;
// //             Path filePath = dirPath.resolve(filename);

// //             Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

// //             Map<String, String> response = new HashMap<>();
// //             response.put("filename", filename);
// //             response.put("url", "/uploads/" + filename);

// //             return ResponseEntity.status(HttpStatus.CREATED).body(response);

// //         } catch (IOException e) {
// //             return ResponseEntity.internalServerError().body(Map.of("message", "Erreur lors de l'upload."));
// //         }
// //     }

// // }


// package com.fdl.controller;

// import com.cloudinary.Cloudinary;
// import com.cloudinary.utils.ObjectUtils;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.http.HttpStatus;
// import org.springframework.http.ResponseEntity;
// import org.springframework.web.bind.annotation.*;
// import org.springframework.web.multipart.MultipartFile;

// import java.io.IOException;
// import java.util.HashMap;
// import java.util.Map;

// @RestController
// @RequestMapping("/api/upload")
// public class UploadCtrl {

//     @Autowired
//     private Cloudinary cloudinary;

//     @PostMapping
//     public ResponseEntity<?> upload(@RequestParam("file") MultipartFile file) {

//         System.out.println("🔥🔥🔥 UPLOAD CTRL ATTEINT 🔥🔥🔥");

//         if (file.isEmpty()) {
//             return ResponseEntity.badRequest().body(Map.of("message", "Fichier vide."));
//         }

//         try {
            
//             System.out.println("☁️ Appel Cloudinary...");

//             Map uploadResult = cloudinary.uploader().upload(
//                 file.getBytes(),
//                 ObjectUtils.asMap(
//                     "folder", "fdl/realisations",
//                     "resource_type", "image"
//                 )
//             );

//             String secureUrl = (String) uploadResult.get("secure_url");

//             Map<String, String> response = new HashMap<>();
//             response.put("url", secureUrl); // URL Cloudinary complète et permanente

//             return ResponseEntity.status(HttpStatus.CREATED).body(response);

//         } catch (IOException e) {
//             return ResponseEntity.internalServerError().body(Map.of("message", "Erreur lors de l'upload."));
//         }
//     }
// }


package com.fdl.controller;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/upload")
public class UploadCtrl {

    @Autowired
    private Cloudinary cloudinary;

    @PostMapping
    public ResponseEntity<?> upload(@RequestParam("file") MultipartFile file) {

        if (file.isEmpty()) {
            return ResponseEntity.badRequest().body(Map.of("message", "Fichier vide."));
        }

        try {
            Map uploadResult = cloudinary.uploader().upload(
                file.getBytes(),
                ObjectUtils.asMap(
                    "folder", "fdl/realisations",
                    "resource_type", "image",
                    "colors", true // demande à Cloudinary d'analyser la palette de couleurs
                )
            );

            String secureUrl = (String) uploadResult.get("secure_url");
            Integer width = (Integer) uploadResult.get("width");
            Integer height = (Integer) uploadResult.get("height");
            String dominantColor = extractDominantColor(uploadResult);

            Map<String, Object> response = new HashMap<>();
            response.put("url", secureUrl);
            response.put("width", width);
            response.put("height", height);
            response.put("color", dominantColor); // ex: "#4a7c6e"

            return ResponseEntity.status(HttpStatus.CREATED).body(response);

        } catch (IOException e) {
            return ResponseEntity.internalServerError().body(Map.of("message", "Erreur lors de l'upload."));
        }
    }

    /**
     * Cloudinary renvoie "colors": [["#4a7c6e", 42.3], ["#ffffff", 18.1], ...]
     * — une liste de [couleur, pourcentage de présence], triée par dominance.
     * On prend juste la première.
     */
    @SuppressWarnings("unchecked")
    private String extractDominantColor(Map uploadResult) {
        try {
            List<List<Object>> colors = (List<List<Object>>) uploadResult.get("colors");
            if (colors != null && !colors.isEmpty()) {
                return (String) colors.get(0).get(0);
            }
        } catch (Exception ignored) {
            // pas grave si l'extraction échoue, on retombe sur un gris neutre côté front
        }
        return null;
    }
}