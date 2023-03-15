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

public final class ShipQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Ship($shipId: ID!) {
      ship(id: $shipId) {
        __typename
        abs
        active
        attempted_landings
        class
        course_deg
        home_port
        id
        image
        imo
        mmsi
        model
        name
        roles
        speed_kn
        status
        successful_landings
        type
        url
        weight_kg
        weight_lbs
        year_built
        missions {
          __typename
          flight
          name
        }
      }
    }
    """

  public let operationName: String = "Ship"

  public var shipId: GraphQLID

  public init(shipId: GraphQLID) {
    self.shipId = shipId
  }

  public var variables: GraphQLMap? {
    return ["shipId": shipId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("ship", arguments: ["id": GraphQLVariable("shipId")], type: .object(Ship.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(ship: Ship? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "ship": ship.flatMap { (value: Ship) -> ResultMap in value.resultMap }])
    }

    public var ship: Ship? {
      get {
        return (resultMap["ship"] as? ResultMap).flatMap { Ship(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "ship")
      }
    }

    public struct Ship: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Ship"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("abs", type: .scalar(Int.self)),
          GraphQLField("active", type: .scalar(Bool.self)),
          GraphQLField("attempted_landings", type: .scalar(Int.self)),
          GraphQLField("class", type: .scalar(Int.self)),
          GraphQLField("course_deg", type: .scalar(Int.self)),
          GraphQLField("home_port", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("image", type: .scalar(String.self)),
          GraphQLField("imo", type: .scalar(Int.self)),
          GraphQLField("mmsi", type: .scalar(Int.self)),
          GraphQLField("model", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("roles", type: .list(.scalar(String.self))),
          GraphQLField("speed_kn", type: .scalar(Double.self)),
          GraphQLField("status", type: .scalar(String.self)),
          GraphQLField("successful_landings", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("weight_kg", type: .scalar(Int.self)),
          GraphQLField("weight_lbs", type: .scalar(Int.self)),
          GraphQLField("year_built", type: .scalar(Int.self)),
          GraphQLField("missions", type: .list(.object(Mission.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(abs: Int? = nil, active: Bool? = nil, attemptedLandings: Int? = nil, `class`: Int? = nil, courseDeg: Int? = nil, homePort: String? = nil, id: GraphQLID? = nil, image: String? = nil, imo: Int? = nil, mmsi: Int? = nil, model: String? = nil, name: String? = nil, roles: [String?]? = nil, speedKn: Double? = nil, status: String? = nil, successfulLandings: Int? = nil, type: String? = nil, url: String? = nil, weightKg: Int? = nil, weightLbs: Int? = nil, yearBuilt: Int? = nil, missions: [Mission?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Ship", "abs": abs, "active": active, "attempted_landings": attemptedLandings, "class": `class`, "course_deg": courseDeg, "home_port": homePort, "id": id, "image": image, "imo": imo, "mmsi": mmsi, "model": model, "name": name, "roles": roles, "speed_kn": speedKn, "status": status, "successful_landings": successfulLandings, "type": type, "url": url, "weight_kg": weightKg, "weight_lbs": weightLbs, "year_built": yearBuilt, "missions": missions.flatMap { (value: [Mission?]) -> [ResultMap?] in value.map { (value: Mission?) -> ResultMap? in value.flatMap { (value: Mission) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var abs: Int? {
        get {
          return resultMap["abs"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "abs")
        }
      }

      public var active: Bool? {
        get {
          return resultMap["active"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "active")
        }
      }

      public var attemptedLandings: Int? {
        get {
          return resultMap["attempted_landings"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "attempted_landings")
        }
      }

      public var `class`: Int? {
        get {
          return resultMap["class"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "class")
        }
      }

      public var courseDeg: Int? {
        get {
          return resultMap["course_deg"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "course_deg")
        }
      }

      public var homePort: String? {
        get {
          return resultMap["home_port"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "home_port")
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

      public var image: String? {
        get {
          return resultMap["image"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "image")
        }
      }

      public var imo: Int? {
        get {
          return resultMap["imo"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "imo")
        }
      }

      public var mmsi: Int? {
        get {
          return resultMap["mmsi"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "mmsi")
        }
      }

      public var model: String? {
        get {
          return resultMap["model"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "model")
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

      public var roles: [String?]? {
        get {
          return resultMap["roles"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "roles")
        }
      }

      public var speedKn: Double? {
        get {
          return resultMap["speed_kn"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "speed_kn")
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

      public var successfulLandings: Int? {
        get {
          return resultMap["successful_landings"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful_landings")
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

      public var url: String? {
        get {
          return resultMap["url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "url")
        }
      }

      public var weightKg: Int? {
        get {
          return resultMap["weight_kg"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "weight_kg")
        }
      }

      public var weightLbs: Int? {
        get {
          return resultMap["weight_lbs"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "weight_lbs")
        }
      }

      public var yearBuilt: Int? {
        get {
          return resultMap["year_built"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "year_built")
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

      public struct Mission: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ShipMission"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("flight", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(flight: String? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "ShipMission", "flight": flight, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var flight: String? {
          get {
            return resultMap["flight"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "flight")
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
      }
    }
  }
}

public final class ShipsListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ShipsList {
      ships {
        __typename
        abs
        active
        attempted_landings
        class
        course_deg
        home_port
        id
        image
        imo
        missions {
          __typename
          flight
          name
        }
        mmsi
        model
        name
        position {
          __typename
          latitude
          longitude
        }
        roles
        speed_kn
        status
        successful_landings
        type
        url
        weight_kg
        weight_lbs
        year_built
      }
    }
    """

  public let operationName: String = "ShipsList"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("ships", type: .list(.object(Ship.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(ships: [Ship?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "ships": ships.flatMap { (value: [Ship?]) -> [ResultMap?] in value.map { (value: Ship?) -> ResultMap? in value.flatMap { (value: Ship) -> ResultMap in value.resultMap } } }])
    }

    public var ships: [Ship?]? {
      get {
        return (resultMap["ships"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Ship?] in value.map { (value: ResultMap?) -> Ship? in value.flatMap { (value: ResultMap) -> Ship in Ship(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Ship?]) -> [ResultMap?] in value.map { (value: Ship?) -> ResultMap? in value.flatMap { (value: Ship) -> ResultMap in value.resultMap } } }, forKey: "ships")
      }
    }

    public struct Ship: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Ship"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("abs", type: .scalar(Int.self)),
          GraphQLField("active", type: .scalar(Bool.self)),
          GraphQLField("attempted_landings", type: .scalar(Int.self)),
          GraphQLField("class", type: .scalar(Int.self)),
          GraphQLField("course_deg", type: .scalar(Int.self)),
          GraphQLField("home_port", type: .scalar(String.self)),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("image", type: .scalar(String.self)),
          GraphQLField("imo", type: .scalar(Int.self)),
          GraphQLField("missions", type: .list(.object(Mission.selections))),
          GraphQLField("mmsi", type: .scalar(Int.self)),
          GraphQLField("model", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("position", type: .object(Position.selections)),
          GraphQLField("roles", type: .list(.scalar(String.self))),
          GraphQLField("speed_kn", type: .scalar(Double.self)),
          GraphQLField("status", type: .scalar(String.self)),
          GraphQLField("successful_landings", type: .scalar(Int.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("weight_kg", type: .scalar(Int.self)),
          GraphQLField("weight_lbs", type: .scalar(Int.self)),
          GraphQLField("year_built", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(abs: Int? = nil, active: Bool? = nil, attemptedLandings: Int? = nil, `class`: Int? = nil, courseDeg: Int? = nil, homePort: String? = nil, id: GraphQLID? = nil, image: String? = nil, imo: Int? = nil, missions: [Mission?]? = nil, mmsi: Int? = nil, model: String? = nil, name: String? = nil, position: Position? = nil, roles: [String?]? = nil, speedKn: Double? = nil, status: String? = nil, successfulLandings: Int? = nil, type: String? = nil, url: String? = nil, weightKg: Int? = nil, weightLbs: Int? = nil, yearBuilt: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Ship", "abs": abs, "active": active, "attempted_landings": attemptedLandings, "class": `class`, "course_deg": courseDeg, "home_port": homePort, "id": id, "image": image, "imo": imo, "missions": missions.flatMap { (value: [Mission?]) -> [ResultMap?] in value.map { (value: Mission?) -> ResultMap? in value.flatMap { (value: Mission) -> ResultMap in value.resultMap } } }, "mmsi": mmsi, "model": model, "name": name, "position": position.flatMap { (value: Position) -> ResultMap in value.resultMap }, "roles": roles, "speed_kn": speedKn, "status": status, "successful_landings": successfulLandings, "type": type, "url": url, "weight_kg": weightKg, "weight_lbs": weightLbs, "year_built": yearBuilt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var abs: Int? {
        get {
          return resultMap["abs"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "abs")
        }
      }

      public var active: Bool? {
        get {
          return resultMap["active"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "active")
        }
      }

      public var attemptedLandings: Int? {
        get {
          return resultMap["attempted_landings"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "attempted_landings")
        }
      }

      public var `class`: Int? {
        get {
          return resultMap["class"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "class")
        }
      }

      public var courseDeg: Int? {
        get {
          return resultMap["course_deg"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "course_deg")
        }
      }

      public var homePort: String? {
        get {
          return resultMap["home_port"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "home_port")
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

      public var image: String? {
        get {
          return resultMap["image"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "image")
        }
      }

      public var imo: Int? {
        get {
          return resultMap["imo"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "imo")
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

      public var mmsi: Int? {
        get {
          return resultMap["mmsi"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "mmsi")
        }
      }

      public var model: String? {
        get {
          return resultMap["model"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "model")
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

      public var position: Position? {
        get {
          return (resultMap["position"] as? ResultMap).flatMap { Position(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "position")
        }
      }

      public var roles: [String?]? {
        get {
          return resultMap["roles"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "roles")
        }
      }

      public var speedKn: Double? {
        get {
          return resultMap["speed_kn"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "speed_kn")
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

      public var successfulLandings: Int? {
        get {
          return resultMap["successful_landings"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful_landings")
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

      public var url: String? {
        get {
          return resultMap["url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "url")
        }
      }

      public var weightKg: Int? {
        get {
          return resultMap["weight_kg"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "weight_kg")
        }
      }

      public var weightLbs: Int? {
        get {
          return resultMap["weight_lbs"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "weight_lbs")
        }
      }

      public var yearBuilt: Int? {
        get {
          return resultMap["year_built"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "year_built")
        }
      }

      public struct Mission: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ShipMission"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("flight", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(flight: String? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "ShipMission", "flight": flight, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var flight: String? {
          get {
            return resultMap["flight"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "flight")
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
      }

      public struct Position: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ShipLocation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("latitude", type: .scalar(Double.self)),
            GraphQLField("longitude", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latitude: Double? = nil, longitude: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "ShipLocation", "latitude": latitude, "longitude": longitude])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double? {
          get {
            return resultMap["latitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "latitude")
          }
        }

        public var longitude: Double? {
          get {
            return resultMap["longitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "longitude")
          }
        }
      }
    }
  }
}
