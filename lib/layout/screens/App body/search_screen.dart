import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List searchItems = [
    'Books',
    'Overnight in Lisbon',
    'Books on psychology',
    'Baby food',
    'Harry Potter and the Philosopher\'s Stone ',
    'Harry Potter and the Chamber of Secrets ',
    'Harry Potter and the Prisoner of Azkaban ',
    'Harry Potter and the Goblet of Fire ',
    'Harry Potter and the Order of the Phoenihx ',
    'Harry Potter and the Half-Blood Prince '
  ];
  List history = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        query == '' ? close(context, null) : history.add(query);
      },
      icon: Icon(query == '' ? Icons.arrow_back : Icons.search),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchItems) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return buildResultColumn(matchQuery);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var book in searchItems) {
      if (book.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(book);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var suggestion = matchQuery[index];
        return ListTile(
          onTap: () {
            query = suggestion;
          },
          title: Text(suggestion),
        );
      },
    );
  }

  ListTile buildListTile(
      String val, List<String> matchQuery, int index, String result) {
    return ListTile(
      onTap: () {
        query = val;
      },
      leading: const Icon(Icons.history),
      trailing: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            history.removeAt(index);
          }),
      title: Text(result),
    );
  }

  Column buildResultColumn(List<String> matchQuery) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'History',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  history.clear();
                },
                child: const Text(
                  'Clear',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              )
            ],
          ),
          margin: const EdgeInsets.only(left: 10.0),
        ),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                var result = history[index];
                return buildListTile(result, matchQuery, index, result);
              },
            ),
          ),
        ),
      ],
    );
  }
}
