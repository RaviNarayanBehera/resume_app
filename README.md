# List

List is collection of multiple values which can have multiple datatype.
List is an ordered collection of values, which contains index values to access it's inner attributes.
List have indexes like arrays.

Declaration of list.
 Syntax :  List variableName = [Values];

### Example
```
  void main() {
  
    List name = [1, "A", 2, "Ravi"];

    print(name[0]);
}
```


### Length of list.
  ```
  void main() {
    List name = [1,2, "A",3, "B", "C"];
  
    print(name.length);
}
```
### To Add Element.
   ```
  void main() {
    List name = [1, "X", "A", "Name"];
  
    print(name[0]);
  
    name.add(2024);
  
    print(name);
}
```
### To add multiple values
   ```
void main() {
    List name = ["Ravi",1, "Hello", 2, "Bye"];
  
    print(name[0]);
  
    name.addAll(['Welcome', 2, 'FLutter]);
  
    print(name);
}
```

### To insrt value
   ```
void main() {
    List name = ["Hello", 1, "Flutter"];

    print(name[0]);

    name.insert(2, 50);

    print(name);
}
```
### To insert multiple values
   ```
void main() {
    List name = ["Hello", 1, 2, "Bye"];
  
    print(name[0]);
  
    name.insertAll(2, [1, 2, 3, 4]);
  
    print(name);
}
```
### To know index of any value
   ```
void main() {
    List name = [{1,2,3},"Ravi","R", "A", "V", "I"];
  
    print(name[0]);
  
    int i = name.indexOf("Ravi");
  
    print(i);
}
```
### To remove value
```
  void main() {
    List name = ["Hello", "A", 1, "Z"];
  
    print(name[0]);
  
    name.remove("Z");
  
    print(name);
}
```

### To remove value with help of index
```
  void main() {
    List name = ["Sajid", 1, "Ravi", 2];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}

```
### To Reverse list
   ``` 
void main() {
    List name = ["W", "O", "W",];
  
    print(name[0]);
  
    print(name.reversed.toList());
}
```

# Generics

Generics will be used to fix the datatype in the list.
fix any one data type in the collection data types.
it can be applied to either data types, value or both.
Example : List number = [10,20,30,40,50];

### Example
  ```
import 'dart:io';

  void main() {
    List <String> name = [];

    print("Enter number of Name : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print("Enter Name : ");
      String val = stdin.readLineSync()!;
      name.add(val);
    }

    print(name);
  }
```

# Map

Map is collection of values. Map is store data in key value pair. which can have different datatype.
Map can be created using '{}'.

Syntax :
  Map mapName = {
  key1 : value1, 
  key2 : value2, 
  ... 
  keyN : valueN, 
  };
### Example.
```
   void main() {
    Map emp = {
      'name': "Ravi",
      'age': 21,
      'per': 89.23,
      'salary': 14000,
    };
    
    emp.forEach((key, value) {
      print("${key} : ${value}");
    });
  }
```
### List of Map.
```
  void main() {
 
  List myData = [
    {
      'name': "Sajid",
      'age': 23,
      'per': 90.23,
      'salary': 24500,
    },
    {
      'name': "Yash",
      'age': 18,
      'per': 80.23,
      'salary': 11000,
    },
    {
      'name': "Sahil",
      'age': 18,
      'per': 98.23,
      'salary': 13000,
    }
    {
      'name': "Vishal",
      'age': 18,
      'per': 88.23,
      'salary': 14500,
    }
  ];

  myData.forEach((e) {
    e.forEach((key, val) {
      print("${key} : ${val}");
    });
    print("");
  });
}
```


# Status Bar

### In Build Context (Globally) :

```
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
```


 ### In AppBar :

```
  appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        toolbarHeight: 80,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.red
        )
      ),
```

<h1 align = "center">
 SnackBar
</h1>

<h1 align = "center">
  <img src="https://github.com/RaviNarayanBehera/resume_app/assets/148530184/9cf7f353-ef52-4d7a-bf86-7013d734603c" height=65%  width=22%>
</h1>

#
<div align = "center">
<video src="https://github.com/RaviNarayanBehera/resume_app/assets/148530184/09f6efcf-4631-4440-ba46-4106858622c7">
</div>
