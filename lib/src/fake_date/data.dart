import '../models/caste.dart';
import '../models/category.dart';
import '../models/movie.dart';

export '../models/caste.dart';
export '../models/category.dart';
export '../models/movie.dart';

final caste = [
  Caste(id: "1", name: "Anne Hathaway", profilePic: anne),
  Caste(id: "2", name: "Kate Winslet", profilePic: kate),
  Caste(id: "3", name: "Emma Watson", profilePic: emma),
];

final categories = [
  Category(id: "1", name: "Action"),
  Category(id: "2", name: "Comedy"),
  Category(id: "3", name: "Horror"),
  Category(id: "4", name: "Thriller"),
];

final movies = [
  Movie(
    id: "1",
    title: "Harry Potter",
    description: description,
    genre: [],
    imgUrl: harryPotter,
    rating: 8.7,
    watchNumber: 3200,
    caste: caste,
  ),
  Movie(
    id: "2",
    title: "Intern",
    description: description,
    genre: [],
    imgUrl: intern,
    rating: 8.2,
    watchNumber: 400,
    caste: caste,
  ),
  Movie(
    id: "3",
    title: "Titanic",
    description: description,
    genre: [],
    imgUrl: titanic,
    rating: 9.3,
    watchNumber: 5900,
    caste: caste,
  ),
];

// caste images
const anne =
    "https://i.pinimg.com/236x/20/70/6b/20706beff25d0f5d88505b10bc02db7c.jpg";
const kate =
    "https://i.pinimg.com/236x/49/a6/91/49a691138f4b715b6624c047663b2881.jpg";
const emma =
    "https://i.pinimg.com/236x/aa/2b/54/aa2b546ddd3a4b621cdd81bf8ef8e12d.jpg";

// movie images
const harryPotter =
    "https://i.pinimg.com/236x/0c/17/77/0c177703176144b9dc3b267c039a01e9.jpg";
const intern =
    "https://i.pinimg.com/236x/7e/93/a5/7e93a573ab8f7f333f99a10a1e0a70c5.jpg";
const titanic =
    "https://i.pinimg.com/236x/39/d1/01/39d101063c4e217323df91b0551175af.jpg";

// some dessciption content
const description =
    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.";
