# Dart SDK imajı kullanarak uygulamayı inşa et
FROM dart:3.3.0 AS build

# Çalışma dizini belirle
WORKDIR /app

# Tüm kaynak kodlarını kopyala
COPY . .

# Bağımlılıkları yükle
RUN dart pub get

# Uygulamayı derle
RUN dart compile exe bin/main.dart -o bin/server

# Minimal boyutlu bir imaj kullanarak üretim imajını oluştur
FROM alpine:latest

# Ortam değişkenleri (env variables)
ENV runmode=production
ENV serverid=default
ENV logging=normal
ENV role=monolith

# Gerekli dosyaları build aşamasından kopyala
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/server
COPY --from=build /app/config/ /app/config/
COPY --from=build /app/web/ /app/web/
COPY --from=build /app/migrations/ /app/migrations/

# Şifreler dosyasını kopyala
COPY ./config/passwords.yaml /app/config/passwords.yaml

# Portları aç
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

# Giriş noktası (EntryPoint): Önce migrasyonları uygular, sonra uygulamayı başlatır
ENTRYPOINT ["/app/server", "migrate", "up", "--mode=$runmode", "--server-id=$serverid", "&&", "/app/server", "--mode=$runmode", "--server-id=$serverid", "--logging=$logging", "--role=$role"]
