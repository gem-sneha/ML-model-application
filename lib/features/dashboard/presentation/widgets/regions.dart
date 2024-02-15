import 'package:flutter/material.dart';

class RegionsDropdown extends StatefulWidget {
  const RegionsDropdown({super.key});

  @override
  State<RegionsDropdown> createState() => _RegionsDropdownState();
}

class _RegionsDropdownState extends State<RegionsDropdown> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "name": "Sector 21",
    },
    {"id": 2, "name": "Sector 22"},
    {
      "id": 3,
      "name": "Sector 57",
    },
    {
      "id": 4,
      "name": "DLF Phase 1",
    },
    {
      "id": 5,
      "name": "DLF Phase 2",
    },
    {
      "id": 6,
      "name": "sector 14",
    },
    {
      "id": 7,
      "name": "sector 52",
    },
    {
      "id": 8,
      "name": "Udyog Vihar Phase 1",
    },
    {
      "id": 9,
      "name": "Udyog Vihar Phase 2",
    },
    {
      "id": 10,
      "name": "Sector 18",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    // List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      setState(() {
        _foundUsers = _allUsers;
      });
      // if the search field is empty or only contains white-space, we'll display all users
    } else {
      setState(() {
        _foundUsers = [];
        _foundUsers = _allUsers
            .where((user) => user["name"]
                .toLowerCase()
                .contains(enteredKeyword.toLowerCase()))
            .toList();
      });

      // we use the toLowerCase() method to make it case-insensitive
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select the region'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: const Color.fromARGB(255, 93, 148, 194),
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          leading: Text(
                            _foundUsers[index]["id"].toString(),
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white),
                          ),
                          title: Text(_foundUsers[index]['name'],
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
