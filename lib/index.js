// index.js (Cloud Function)
const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();

exports.sendNotificationOnItemAdd = functions.firestore
  .document('items/{itemId}')
  .onCreate(async (snapshot, context) => {
    const newItem = snapshot.data();

    // Prepare notification payload (replace with your data)
    const payload = {
      notification: {
        title: 'New Item Added!',
        body: `A new item "${newItem.name}" has been added to the list.`,
      },
    };

    // Send notification to subscribed topics or all devices (replace with your logic)
    admin.messaging().sendToTopic('all_items') // Or target specific topics
      .then((response) => {
        console.log('Notification sent successfully:', response);
      })
      .catch((error) => {
        console.error('Error sending notification:', error);
      });
  });
