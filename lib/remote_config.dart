class RemoteConfig {
  final TextFieldConfig name;
  final TextFieldConfig nickname;
  final TextFieldConfig email;
  final TextFieldConfig phone;
  final TextFieldConfig address;
  final SliderConfig age;
  final SliderConfig experience;
  final SliderConfig heightCm;

  RemoteConfig({
    required this.name,
    required this.nickname,
    required this.email,
    required this.phone,
    required this.address,
    required this.age,
    required this.experience,
    required this.heightCm,
  });

  factory RemoteConfig.fromJson(Map<String, dynamic> json) => RemoteConfig(
    name: TextFieldConfig.fromJson(json["name"]),
    nickname: TextFieldConfig.fromJson(json["nickname"]),
    email: TextFieldConfig.fromJson(json["email"]),
    phone: TextFieldConfig.fromJson(json["phone"]),
    address: TextFieldConfig.fromJson(json["address"]),
    age: SliderConfig.fromJson(json["age"]),
    experience: SliderConfig.fromJson(json["experience"]),
    heightCm: SliderConfig.fromJson(json["heightCm"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name.toJson(),
    "nickname": nickname.toJson(),
    "email": email.toJson(),
    "phone": phone.toJson(),
    "address": address.toJson(),
    "age": age.toJson(),
    "experience": experience.toJson(),
    "heightCm": heightCm.toJson(),
  };
}

class TextFieldConfig {
  final int maxLength;
  final int minLength;
  final List<TextFieldValidator> validatorRegex;
  final String formatterRegex;
  final bool isMandatory;

  TextFieldConfig({
    required this.maxLength,
    required this.minLength,
    required this.validatorRegex,
    required this.formatterRegex,
    required this.isMandatory,
  });

  factory TextFieldConfig.fromJson(Map<String, dynamic> json) => TextFieldConfig(
    maxLength: json["maxLength"],
    minLength: json["minLength"],
    validatorRegex: List<TextFieldValidator>.from(json["validatorRegex"].map((x) => TextFieldValidator.fromJson(x))),
    formatterRegex: json["formatterRegex"],
    isMandatory: json["isMandatory"],
  );

  Map<String, dynamic> toJson() => {
    "maxLength": maxLength,
    "minLength": minLength,
    "validatorRegex": List<dynamic>.from(validatorRegex.map((x) => x.toJson())),
    "formatterRegex": formatterRegex,
    "isMandatory": isMandatory,
  };
}

class TextFieldValidator {
  final String regex;
  final String message;

  TextFieldValidator({
    required this.regex,
    required this.message,
  });

  factory TextFieldValidator.fromJson(Map<String, dynamic> json) => TextFieldValidator(
    regex: json["regex"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "regex": regex,
    "message": message,
  };
}

class SliderConfig {
  final int min;
  final int max;

  SliderConfig({
    required this.min,
    required this.max,
  });

  factory SliderConfig.fromJson(Map<String, dynamic> json) => SliderConfig(
    min: json["min"],
    max: json["max"],
  );

  Map<String, dynamic> toJson() => {
    "min": min,
    "max": max,
  };
}