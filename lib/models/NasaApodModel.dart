class NasaApodModel {
/*
{
  "copyright": "Rodrigo Guerra",
  "date": "2021-10-02",
  "explanation": "Posing as a brilliant evening star, Venus lies near the western horizon in this southern hemisphere, early spring, night skyscape. To create the composite view exposures tracking the sky and fixed for the foreground were taken on September 25 from Cascavel in southern Brazil. In view after sunset, Venus appears immersed in a cone of zodiacal light, sunlight scattered from dust along the Solar System's ecliptic plane. In fact from either hemisphere of planet Earth, zodiacal light is most visible after sunset near a spring equinox, (or before sunrise near an autumn equinox) when its luminous arc lies at steep angles to the horizon. Extending above the sunset on this night, the zodiacal light reaches toward rich starfields and immense interstellar dust clouds in the bulge of the central Milky Way. Follow along the Milky Way from the central bulge back toward the horizon and you'll spot the closest star system to the Sun, Alpha Centauri, a mere 4.37 light-years away.",
  "hdurl": "https://apod.nasa.gov/apod/image/2110/ArcsOfLightAndDust.jpg",
  "media_type": "image",
  "service_version": "v1",
  "title": "A Light and Dusty Night",
  "url": "https://apod.nasa.gov/apod/image/2110/ArcsOfLightAndDust1024.jpg"
} 
*/

  String? copyright;
  String? date;
  String? explanation;
  String? hdurl;
  String? mediaType;
  String? serviceVersion;
  String? title;
  String? url;

  NasaApodModel({
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });
  NasaApodModel.fromJson(Map<String, dynamic> json) {
    copyright = json["copyright"]?.toString();
    date = json["date"]?.toString();
    explanation = json["explanation"]?.toString();
    hdurl = json["hdurl"]?.toString();
    mediaType = json["media_type"]?.toString();
    serviceVersion = json["service_version"]?.toString();
    title = json["title"]?.toString();
    url = json["url"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["copyright"] = copyright;
    data["date"] = date;
    data["explanation"] = explanation;
    data["hdurl"] = hdurl;
    data["media_type"] = mediaType;
    data["service_version"] = serviceVersion;
    data["title"] = title;
    data["url"] = url;
    return data;
  }
}
