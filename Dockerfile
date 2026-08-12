# ==========================================
# Étape 1 : Construire l'application
# ==========================================
FROM maven:3.9-eclipse-temurin-21 AS build

WORKDIR /app

# Copier le pom.xml
COPY pom.xml .

# Télécharger les dépendances Maven
RUN mvn dependency:go-offline -B

# Copier le code source
COPY src ./src

# Compiler et créer le JAR
RUN mvn clean package -DskipTests


# ==========================================
# Étape 2 : Exécuter l'application
# ==========================================
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copier le JAR généré
COPY --from=build /app/target/fdl-1.0.0.jar app.jar

# Port utilisé par Render
EXPOSE 10000

# Démarrer Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]