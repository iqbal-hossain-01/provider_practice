import 'package:flutter/material.dart';

class SearchDelegateApp extends StatelessWidget {
  static const String routeName = '/search_delegate';
  const SearchDelegateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Search Example'),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = ['Dhaka', 'Chittagong', 'Sylhet', 'Rajshahi'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, ''),
      icon: const Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? cities
        : cities.where((city) => city.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestionList[index]),
        onTap: () {
          query = suggestionList[index];
          showResults(context);
        },
      ),
    );
  }
}
