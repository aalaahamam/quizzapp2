import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

List <Map<String,dynamic>> dataBase=[
{
  //key
"Category":"Sport test",
"color":Colors.purple,
"data":[   // list of map 
  {
    "question":' After how many Year’s FIFA World Cup held?',
    "answer":[
      {'ans':"5",'score':0},
      {'ans':"2",'score':0},
      {'ans':"4",'score':1},
      {'ans':"8",'score':0},
    ]
  },
  {
    "question":'Which Country won the first FIFA World Cup',
    "answer":[
       {'ans':'Italy','score':0},
      {'ans':'Barazil','score':1},
      {'ans':'Argentina','score':0},
      {'ans':'Uruguay','score':0},
    ]
  },
  {
    "question":'Who won the first ICC World Cup',
    "answer":[
      {'ans':'India','score':0},
      {'ans':'West Indies','score':1},
      {'ans':'England','score':0},
      {'ans':'Australia','score':0},

    ]
  },
],
},
{
  //key
"Category":"science test",
"color":Color.fromARGB(255, 181, 81, 199),
"data":[   // list of map 
  {
    "question":'What happens to a body when its density is equal to the density of the fluid',
    "answer":[ 
       {'ans':'it floats','score':0},
      {'ans':'it sinks','score':0},
      {'ans':'it remains suspended','score':1},
      {'ans':'None of the above','score':0},]
  },
  {
    "question":'In which of the following mediums will sound travel with greater speed at 0° C?',
    "answer":[ 
       {'ans':'Aluminium','score':1},
      {'ans':' Water','score':0},
      {'ans':'Hydrogen','score':0},
      {'ans':' Same in all of the above','score':0},]
  },
  {
    "question":'Which of the following is the middle layer of the eye',
    "answer":[  {'ans':' Sclera','score':0},
      {'ans':'Lens','score':0},
      {'ans':'Choroid','score':1},
      {'ans':'Retina','score':0},]
  },
],
},
{
  //key
"Category":"General test",
"color":Color.fromARGB(255, 196, 138, 206),
"data":[   // list of map 
  {
    "question":'What is the capital city of Afghanistan',
    "answer":[  {'ans':'Tripoli','score':0},
      {'ans':'Beijing','score':0},
      {'ans':'Kabul','score':1},
      {'ans':'Egypt','score':0},]
  },
  {
    "question":'What is the capital city of France ',
    "answer":[  {'ans':'Paris','score':1},
      {'ans':'London','score':0},
      {'ans':'Tokyo','score':0},
      {'ans':'Berlin','score':0},]
  },
  {
    "question":' What is the capital city of Germany',
    "answer":[  {'ans':'Paris','score':0},
      {'ans':'Berlin','score':1},
      {'ans':'Seoul','score':0},
      {'ans':'Port Louis','score':0},]
  },
],
},
{
  "Category": "History Test",
  "color": Color.fromARGB(255, 147, 84, 158),
  "data": [
    {
      "question": "Who was the first President of the United States?",
      "answer": [
        { "ans": "Thomas Jefferson", "score": 0 },
        { "ans": "Abraham Lincoln", "score": 0 },
        { "ans": "George Washington", "score": 1 },
        { "ans": "John Adams", "score": 0 }
      ]
    },
    {
      "question": "In what year did Christopher Columbus arrive in the Americas?",
      "answer": [
        { "ans": "1492", "score": 1 },
        { "ans": "1510", "score": 0 },
        { "ans": "1620", "score": 0 },
        { "ans": "1776", "score": 0 }
      ]
    },
    {
      "question": "Which civilization built the Machu Picchu complex?",
      "answer": [
        { "ans": "Mayans", "score": 0 },
        { "ans": "Incas", "score": 1 },
        { "ans": "Aztecs", "score": 0 },
        { "ans": "Romans", "score": 0 }
      ]
    },
    {
      "question": "The Industrial Revolution began in which country?",
      "answer": [
        { "ans": "France", "score": 0 },
        { "ans": "Germany", "score": 0 },
        { "ans": "United Kingdom", "score": 1 },
        { "ans": "United States", "score": 0 }
      ]
    }
  ]
},
{
  "Category": "Art Test",
  "color": Color.fromARGB(255, 175, 70, 194),
  "data": [
    {
      "question": "Who painted the Mona Lisa?",
      "answer": [
        { "ans": "Vincent van Gogh", "score": 0 },
        { "ans": "Pablo Picasso", "score": 0 },
        { "ans": "Leonardo da Vinci", "score": 1 },
        { "ans": "Claude Monet", "score": 0 }
      ]
    },
    {
      "question": "Which art movement is known for its use of optical illusions and geometric patterns?",
      "answer": [
        { "ans": "Impressionism", "score": 0 },
        { "ans": "Cubism", "score": 0 },
        { "ans": "Surrealism", "score": 0 },
        { "ans": "Op Art", "score": 1 }
      ]
    },
    {
      "question": "Who sculpted the statue 'David'?",
      "answer": [
        { "ans": "Auguste Rodin", "score": 0 },
        { "ans": "Michelangelo", "score": 1 },
        { "ans": "Edgar Degas", "score": 0 },
        { "ans": "Salvador Dali", "score": 0 }
      ]
    },
    {
      "question": "Which famous artist is known for his drip painting technique?",
      "answer": [
        { "ans": "Jackson Pollock", "score": 1 },
        { "ans": "Henri Matisse", "score": 0 },
        { "ans": "Andy Warhol", "score": 0 },
        { "ans": "Rembrandt", "score": 0 }
      ]
    }
  ]
},
{
  "Category": "Math Test",
  "color": Colors.purple,
  "data": [
    {
      "question": "What is the result of 2 + 3?",
      "answer": [
        { "ans": "4", "score": 0 },
        { "ans": "5", "score": 1 },
        { "ans": "6", "score": 0 },
        { "ans": "7", "score": 0 }
      ]
    },
    {
      "question": "Solve for x: 3x - 7 = 8",
      "answer": [
        { "ans": "x = 1", "score": 0 },
        { "ans": "x = 3", "score": 0 },
        { "ans": "x = 5", "score": 1 },
        { "ans": "x = 7", "score": 0 }
      ]
    },
    {
      "question": "What is the square root of 64?",
      "answer": [
        { "ans": "4", "score": 0 },
        { "ans": "6", "score": 0 },
        { "ans": "8", "score": 1 },
        { "ans": "10", "score": 0 }
      ]
    },
    {
      "question": "If a triangle has angles 45°, 45°, and 90°, what type of triangle is it?",
      "answer": [
        { "ans": "Equilateral", "score": 0 },
        { "ans": "Isosceles", "score": 0 },
        { "ans": "Scalene", "score": 0 },
        { "ans": "Right Triangle", "score": 1 }
      ]
    }
  ]
}


];
  TextEditingController usernameControl=TextEditingController();
