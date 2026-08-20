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
@RequestMapping("/api/media")
public class MediaUploadCtrl {

    @Autowired
    private Cloudinary cloudinary;

    @PostMapping("/upload")
    public ResponseEntity<?> upload(@RequestParam("file") MultipartFile file) {

        if (file.isEmpty()) {
            return ResponseEntity.badRequest().body(Map.of("message", "Fichier vide."));
        }

        String resourceType = resolveResourceType(file);
        if (resourceType == null) {
            return ResponseEntity.badRequest().body(Map.of(
                "message", "Type de fichier non supporté. Formats acceptés : images, vidéos, PDF/documents."
            ));
        }

        try {
            Map<String, Object> options = new HashMap<>();
            options.put("folder", "fdl/actualites/" + resourceType); // rangé par type
            options.put("resource_type", resourceType);

            // La couleur/dimension n'a de sens que pour une image
            if ("image".equals(resourceType)) {
                options.put("colors", true);
            }

            // Map uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.asMap(options));
            Map uploadResult = cloudinary.uploader().upload(file.getBytes(), options); // <-- CORRECTION

            Map<String, Object> response = new HashMap<>();
            response.put("url", uploadResult.get("secure_url"));
            response.put("type", resourceType); // "image" | "video" | "raw"

            if ("image".equals(resourceType)) {
                response.put("width", uploadResult.get("width"));
                response.put("height", uploadResult.get("height"));
                response.put("color", extractDominantColor(uploadResult));
            }
            if ("video".equals(resourceType)) {
                response.put("duration", uploadResult.get("duration")); // en secondes
                response.put("width", uploadResult.get("width"));
                response.put("height", uploadResult.get("height"));
            }
            if ("raw".equals(resourceType)) {
                response.put("originalFilename", file.getOriginalFilename());
                response.put("bytes", uploadResult.get("bytes")); // taille du fichier
            }

            return ResponseEntity.status(HttpStatus.CREATED).body(response);

        } catch (IOException e) {
            return ResponseEntity.internalServerError().body(Map.of("message", "Erreur lors de l'upload."));
        }
    }

    /**
     * Déduit le resource_type Cloudinary à partir du Content-Type
     * détecté par le navigateur au moment de la sélection du fichier.
     */
    private String resolveResourceType(MultipartFile file) {
        String contentType = file.getContentType();
        if (contentType == null) return null;

        if (contentType.startsWith("image/")) return "image";
        if (contentType.startsWith("video/")) return "video";

        // PDF, Word, Excel, etc. — Cloudinary les traite comme "raw"
        if (contentType.equals("application/pdf")
                || contentType.equals("application/msword")
                || contentType.contains("officedocument")
                || contentType.equals("text/plain")) {
            return "raw";
        }

        return null; // type non supporté, rejeté
    }

    @SuppressWarnings("unchecked")
    private String extractDominantColor(Map uploadResult) {
        try {
            List<List<Object>> colors = (List<List<Object>>) uploadResult.get("colors");
            if (colors != null && !colors.isEmpty()) {
                return (String) colors.get(0).get(0);
            }
        } catch (Exception ignored) {
        }
        return null;
    }
}