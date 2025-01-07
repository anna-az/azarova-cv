class ExperienceModel {
  ExperienceModel(
      {required this.startTime,
      required this.company,
      required this.position,
      required this.responsibilities,
      this.endTime});
  DateTime startTime;
  DateTime? endTime;
  String position;
  String company;
  List<String> responsibilities;

  ExperienceModel copy() => ExperienceModel(
        startTime: startTime,
        endTime: endTime,
        position: position,
        company: company,
        responsibilities: responsibilities,
      );
}
