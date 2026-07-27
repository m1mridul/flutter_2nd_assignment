import 'package:flutter/material.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  // Dummy contact data structure
  final List<Map<String, String>> contacts = const [
    {'name': 'Mridul', 'number': '01877-777777'},
    {'name': 'Hasan', 'number': '01673-777777'},
    {'name': 'Tanvir', 'number': '01745-777777'},
    {'name': 'Mehedi', 'number': '01745-777777'},
    {'name': 'Pial', 'number': '01745-777777'},
  ];

  @override
  Widget build(BuildContext context) {
    // Theme color based on the design
    const Color primaryColor = Color(0xFF5A798B);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Name TextFormField
            TextFormField(
              initialValue: 'Mridul',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
              ),
            ),
            SizedBox(height: 12),

            // Number TextFormField
            TextFormField(
              initialValue: '01745-777777',
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
              ),
            ),
            SizedBox(height: 12),

            // Add Button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Contact List
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return Card(
                    color: const Color(0xFFF4F4F4),
                    elevation: 0,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 32,
                        color: Color(0xFF6D4C41), // Brownish accent
                      ),
                      title: Text(
                        contact['name']!,
                        style: const TextStyle(
                          color: Color(0xFFD32F2F), // Reddish text
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        contact['number']!,
                        style: const TextStyle(color: Colors.black87),
                      ),
                      trailing: const Icon(Icons.phone, color: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
