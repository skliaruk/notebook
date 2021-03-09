class APIPath {
  static String note(String uid, String noteId) => 'users/$uid/notes/$noteId';
  static String notes(String uid) => 'users/$uid/notes';
}
