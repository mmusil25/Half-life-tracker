# Chemical Half Life Tracker App

## Screenshots

## What

This is an app that allows you see the current amount of a given chemical there is in your body based on a few variables the user enters:

- Initial amount of chemical taken
- Time the user took the initial amount
- The half life of that particular chemical in the user's body. 

## Why

It can be hard to answer the question: Why do I feel agitated/anxious/tired? Knowing what chemicals are floating around in your body and brain will help you systematically answer that question. 

## How

This project had the dual purpose of allowing me to build a simple application as well as allowing me to practice the concepts I learned in *Clean-Architecture*  and *UML 2.0* . The application was developed using the single responsibility concept as well as using as much decoupling as possible between the three components of the system:

1. The business rules = The specific functions that provide the core value to the user
2. The user interface = Flutter widgets that accept inputs and pass them to the business rules
3. Persistence (Database) = The functions and packages used to maintain user data as it is created and manipulated

### The Business Rules

The half-life tracker app takes as input information about a chemical the user has consumed. The half life tracker app then uses this information to provide a real time display to the user of the amount of all recorded substances in their body until that amount reaches a reasonably small amount. 

**Requirements Articulations** 

1. The application shall provide an input method where a user can enter the name of the substance, the quantity consumed, the time consumed, and the half life of the substance. 
2. The application shall output a real time list of substance names and substance quantities present in the user's body at the current update interval
3. The application shall delete a chemical once the amout in the user's body has reached 1% of the original quantity.
4. The application shall maintain a record of all substances and quantities entered for the useful life of the application. 

**Tests to validate each requirement**

Test 1 - User input storage and retrieval

The tests checks that user data can be input into the acceptance function, stored in persistence, and retrieved. The input data has the following structure

```
{
    "Substance name": String,
    "Initial quantity (milligrams)": float,
    "Time consumed": datetime,
    "Half-life" : float
}

```



### Book references

1. R. C. Martin, Clean architecture. Philadelphia, PA: Prentice Hall, 2017. (ISBN 9780134494166)
2. Miles, R., & Hamilton, K. (2006). Learning UML 2.0. O’Reilly Media. (ISBN 9780596519117)


### Web references used

[Simple Flutter Datatable](https://blog.logrocket.com/flutter-datatable-widget-guide-displaying-data/)
[Handle Changes to a text field](https://docs.flutter.dev/cookbook/forms/text-field-changes#interactive-example)