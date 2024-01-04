//Note: All the regex are encoded with base64
final defaultConfigJSON = {
  "data": {
    "name": {
      "maxLength": 50,
      "minLength": 8,
      "validatorRegex": [],
      "formatterRegex": "XlthLXpBLVpcc10rJA==",
      "isMandatory": true
    },
    "nickname": {
      "maxLength": 50,
      "minLength": 8,
      "validatorRegex": [],
      "formatterRegex": "XlthLXowLTlfLSRAXSsk",
      "isMandatory": true
    },
    "email": {
      "maxLength": null,
      "minLength": null,
      "validatorRegex": [
        {
          "regex": "XlthLXpBLVowLTlfListXStAW2EtekEtWjAtOS1dK1wuW2EtekEtWjAtOS0uXSsk",
          "message": "Please enter valid email"
        }
      ],
      "formatterRegex": null,
      "isMandatory": true
    },
    "phone": {
      "maxLength": null,
      "minLength": 10,
      "validatorRegex": [
        {
          "regex": "XlwoP1xkezN9XCk/Wy0uXHNdP1xkezN9Wy0uXHNdP1xkezR9JA==",
          "message": "Please enter valid phone"
        }
      ],
      "formatterRegex": null,
      "isMandatory": true
    },
    "address": {
      "maxLength": 150,
      "minLength": null,
      "validatorRegex": [],
      "formatterRegex": "XlthLXpBLVowLTksIC1dKyQ=",
      "isMandatory": false
    },
    "age": {
      "min": 18,
      "max": 100
    },
    "experience": {
      "min": 1,
      "max": 10
    },
    "heightCm": {
      "min": 125,
      "max": 250
    }
  }
};
