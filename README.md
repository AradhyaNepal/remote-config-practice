# remote_config_firebase

What you can learn from this project?
- Amazing Animations.
- Theme setup for Dark Mode.
- How to practically implement clean coding in your project.
- How to implement remote config in our app using Firebase.
- And lots other exiting things.

```
{
  "name":{
    "maxLength":50,
    "minLength":8,
    "validatorRegex":[],
    "formatterRegex":r'^[a-zA-Z\s]+$',
    "isMandatory":true
  },
  "nickname":{
    "maxLength":50,
    "minLength":8,
    "validatorRegex":[],
    "formatterRegex":r'^[a-z0-9_-$@]+$',
    "isMandatory":true
  },
  "email":{
    "maxLength":null,
    "minLength":null,
    "validatorRegex":[
      {
        "regex":r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
        "message":"Please enter valid email"
      }
    ],
    "formatterRegex":null,
    "isMandatory":true
  },
  "phone":{
    "maxLength":null,
    "minLength":10,
    "validatorRegex":[
      {
        "regex":r'^\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}$',
        "message":"Please enter valid phone"
      }
    ],
    "formatterRegex":null,
    "isMandatory":true
  },
  "address":{
    "maxLength":150,
    "minLength":null,
    "validatorRegex":[],
    "formatterRegex":r'^[a-zA-Z0-9, -]+$',
    "isMandatory":false
  },
  "age":{
    "min":18,
    "max":100
  },
  "experience":{
    "min":1,
    "max":10
  },
  "heightCm":{
    "min":125,
    "max":250
  }
}
```



