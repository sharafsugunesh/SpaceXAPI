// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class CapsuleQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Capsule {
      capsules {
        __typename
        status
        type
        missions {
          __typename
          name
          flight
        }
        id
        dragon {
          __typename
          name
          id
        }
      }
    }
    """

  public let operationName: String = "Capsule"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("capsules", type: .list(.object(Capsule.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(capsules: [Capsule?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "capsules": capsules.flatMap { (value: [Capsule?]) -> [ResultMap?] in value.map { (value: Capsule?) -> ResultMap? in value.flatMap { (value: Capsule) -> ResultMap in value.resultMap } } }])
    }

    public var capsules: [Capsule?]? {
      get {
        return (resultMap["capsules"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Capsule?] in value.map { (value: ResultMap?) -> Capsule? in value.flatMap { (value: ResultMap) -> Capsule in Capsule(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Capsule?]) -> [ResultMap?] in value.map { (value: Capsule?) -> ResultMap? in value.flatMap { (value: Capsule) -> ResultMap in value.resultMap } } }, forKey: "capsules")
      }
    }

    public struct Capsule: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Capsule"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .scalar(String.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("missions", type: .list(.object(Mission.selections))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("dragon", type: .object(Dragon.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(status: String? = nil, type: String? = nil, missions: [Mission?]? = nil, id: GraphQLID? = nil, dragon: Dragon? = nil) {
        self.init(unsafeResultMap: ["__typename": "Capsule", "status": status, "type": type, "missions": missions.flatMap { (value: [Mission?]) -> [ResultMap?] in value.map { (value: Mission?) -> ResultMap? in value.flatMap { (value: Mission) -> ResultMap in value.resultMap } } }, "id": id, "dragon": dragon.flatMap { (value: Dragon) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var status: String? {
        get {
          return resultMap["status"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var type: String? {
        get {
          return resultMap["type"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public var missions: [Mission?]? {
        get {
          return (resultMap["missions"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Mission?] in value.map { (value: ResultMap?) -> Mission? in value.flatMap { (value: ResultMap) -> Mission in Mission(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Mission?]) -> [ResultMap?] in value.map { (value: Mission?) -> ResultMap? in value.flatMap { (value: Mission) -> ResultMap in value.resultMap } } }, forKey: "missions")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var dragon: Dragon? {
        get {
          return (resultMap["dragon"] as? ResultMap).flatMap { Dragon(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "dragon")
        }
      }

      public struct Mission: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CapsuleMission"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("flight", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, flight: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "CapsuleMission", "name": name, "flight": flight])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var flight: Int? {
          get {
            return resultMap["flight"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "flight")
          }
        }
      }

      public struct Dragon: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Dragon"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, id: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "Dragon", "name": name, "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class LaunchesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Launches {
      launches {
        __typename
        details
        id
        mission_id
        mission_name
        rocket {
          __typename
          rocket_name
          rocket_type
        }
      }
    }
    """

  public let operationName: String = "Launches"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launches", type: .list(.object(Launch.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launches: [Launch?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launches": launches.flatMap { (value: [Launch?]) -> [ResultMap?] in value.map { (value: Launch?) -> ResultMap? in value.flatMap { (value: Launch) -> ResultMap in value.resultMap } } }])
    }

    public var launches: [Launch?]? {
      get {
        return (resultMap["launches"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Launch?] in value.map { (value: ResultMap?) -> Launch? in value.flatMap { (value: ResultMap) -> Launch in Launch(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Launch?]) -> [ResultMap?] in value.map { (value: Launch?) -> ResultMap? in value.flatMap { (value: Launch) -> ResultMap in value.resultMap } } }, forKey: "launches")
      }
    }

    public struct Launch: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launch"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("details", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("mission_id", type: .list(.scalar(String.self))),
          GraphQLField("mission_name", type: .scalar(String.self)),
          GraphQLField("rocket", type: .object(Rocket.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(details: String? = nil, id: GraphQLID? = nil, missionId: [String?]? = nil, missionName: String? = nil, rocket: Rocket? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launch", "details": details, "id": id, "mission_id": missionId, "mission_name": missionName, "rocket": rocket.flatMap { (value: Rocket) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var details: String? {
        get {
          return resultMap["details"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "details")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var missionId: [String?]? {
        get {
          return resultMap["mission_id"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "mission_id")
        }
      }

      public var missionName: String? {
        get {
          return resultMap["mission_name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mission_name")
        }
      }

      public var rocket: Rocket? {
        get {
          return (resultMap["rocket"] as? ResultMap).flatMap { Rocket(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "rocket")
        }
      }

      public struct Rocket: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchRocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("rocket_name", type: .scalar(String.self)),
            GraphQLField("rocket_type", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(rocketName: String? = nil, rocketType: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchRocket", "rocket_name": rocketName, "rocket_type": rocketType])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var rocketName: String? {
          get {
            return resultMap["rocket_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_name")
          }
        }

        public var rocketType: String? {
          get {
            return resultMap["rocket_type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_type")
          }
        }
      }
    }
  }
}
