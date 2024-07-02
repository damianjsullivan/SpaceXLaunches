# SpaceXLaunches
## Build
The steps to build the project are as follows;
- Pull down the repo
- Under 'Signing & Capabilities' update the Team and Bundle Identifier
- Build and run
- There are no third party dependancies

## Design Decisions
- I used MVVM as the overall architecture
- The persistance was implemented using SwiftData

## Challanges
### Lack of a Usable API Specification
SpaceX to not have an OpenAPI specification making it a harder to autogenerate the models. I used example data from their site with [QuickType](https://app.quicktype.io), and then tweeked the properties based on what I was actually seeing from the API responses. I used [RapidAPI](https://paw.cloud) to assist with this.

### SwiftData and MVVM
SwiftData was not designed with MVVM in mind so there was some work to decouple it from the view

## Future Enhancements
For next steps I would do the following;
- Persist CrewMembers and Rockets to SwiftData
- Implement mocks and expand the unit tests
