"use strict";

const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

/**
 * Triggers when a user uploads KYC documents to the 'document' collection and sends a notification.
 */
exports.sendUserNotificationOfDocumentUpload = functions.database
  .ref("/documents/{user_id}")
  .onWrite(async (change, context) => {
    const user_id = context.params.user_id;

    console.log("We have a new document write for user:", user_id);

    // Get users device notification tokens.
    functions.firestore
      .document("users/{userId}/token")
      .onUpdate((change, context) => {
        // Get an object representing the current document
        const newValue = change.after.data();

        // Notification details.
        const payload = {
          notification: {
            title: "Documents uploaded successfully!",
            body: "Your documents have been uploaded successfully and are awaiting verification.",
          },
        };
        const response = await admin.messaging().sendToDevice(newValue, payload);
      });
  });
