class Event {
  final String id;
  final String title;
  final String location;
  final DateTime dateTime;
  final String typeOfEvent;
  final String description;
  final List rsvp;
  final DateTime createdAt;
  final String userID;

  Event(
      {this.id,
      this.title,
      this.location,
      this.dateTime,
      this.typeOfEvent,
      this.description,
      this.rsvp,
      this.createdAt,
      this.userID});
}
