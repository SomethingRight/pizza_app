import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  Category({required this.name, required this.imageUrl});
  
  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

 static List<Category> categories = [
  Category(name: 'Pizza', imageUrl: 'https://images.unsplash.com/photo-1579751626657-72bc17010498?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80'),
  Category(name: 'Beer', imageUrl: 'https://images.unsplash.com/photo-1575367439058-6096bb9cf5e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
  Category(name: 'Lemonade', imageUrl: 'https://images.unsplash.com/photo-1567671823828-4272a32ef644?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=965&q=80'),
  Category(name: 'Smoothie', imageUrl: 'https://images.unsplash.com/photo-1494315153767-9c231f2dfe79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  Category(name: 'Water', imageUrl: 'https://images.unsplash.com/photo-1532038236394-1a724acce62b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=377&q=80'),
 ];
}

