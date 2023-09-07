// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Model {
  final String a;
  final String b;
  
  Model({
    required this.a,
    required this.b,
  });

  Model copyWith({
    String? a,
    String? b,
  }) {
    return Model(
      a: a ?? this.a,
      b: b ?? this.b,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'a': a,
      'b': b,
    };
  }

  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      a: map['a'] as String,
      b: map['b'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Model.fromJson(String source) => Model.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Model(a: $a, b: $b)';

  @override
  bool operator ==(covariant Model other) {
    if (identical(this, other)) return true;
  
    return 
      other.a == a &&
      other.b == b;
  }

  @override
  int get hashCode => a.hashCode ^ b.hashCode;
}
