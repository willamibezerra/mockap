import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockap/app/api_repository.dart';
import 'package:mockito/annotations.dart';

import 'package:mockito/mockito.dart';

import 'api_test.mocks.dart';

//class Mockdio extends Mock implements Dio {}

@GenerateMocks([Dio])
void main() {
  final dio = MockDio();
  // final dio = Mockdio();
  final repository = ApiRepository(client: dio);

  test('the first name shouls be Jimmie Trantow', () async {
    when(dio.get('https://635d121bcb6cf98e56ac2f66.mockapi.io/api/v1/times'))
        .thenAnswer(
      (_) async => Response(
        data: jsonDecode(jsondata),
        requestOptions: RequestOptions(
            path: 'https://635d121bcb6cf98e56ac2f66.mockapi.io/api/v1/times'),
      ),
    );
    final data = await repository.loadApi();
    expect(data.first.name, contains('Jimmie Trantow'));
  });
}

String jsondata = ''' 
[
    {
        "createdAt": "2022-10-29T09:31:13.720Z",
        "name": "Jimmie Trantow",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1008.jpg",
        "id": "1"
    },
    {
        "createdAt": "2022-10-29T09:17:08.749Z",
        "name": "Beth Pfeffer",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/166.jpg",
        "id": "2"
    },
    {
        "createdAt": "2022-10-28T22:09:31.317Z",
        "name": "Mrs. Kurt Hettinger",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/870.jpg",
        "id": "3"
    },
    {
        "createdAt": "2022-10-28T22:37:03.011Z",
        "name": "Rickey Wilkinson MD",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1032.jpg",
        "id": "4"
    },
    {
        "createdAt": "2022-10-28T14:33:12.931Z",
        "name": "Guillermo Schaden",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/151.jpg",
        "id": "5"
    },
    {
        "createdAt": "2022-10-28T18:15:07.218Z",
        "name": "Wayne Bogisich",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1042.jpg",
        "id": "6"
    },
    {
        "createdAt": "2022-10-28T13:44:34.825Z",
        "name": "Neil Lockman",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/353.jpg",
        "id": "7"
    },
    {
        "createdAt": "2022-10-29T08:54:32.549Z",
        "name": "Clayton Donnelly",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1074.jpg",
        "id": "8"
    },
    {
        "createdAt": "2022-10-28T15:38:09.285Z",
        "name": "Jay Nitzsche",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/903.jpg",
        "id": "9"
    },
    {
        "createdAt": "2022-10-28T13:57:13.456Z",
        "name": "Brian Runolfsdottir",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/515.jpg",
        "id": "10"
    },
    {
        "createdAt": "2022-10-28T12:55:45.408Z",
        "name": "Dr. Amos Predovic",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1005.jpg",
        "id": "11"
    },
    {
        "createdAt": "2022-10-28T14:20:00.822Z",
        "name": "Luke White",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/61.jpg",
        "id": "12"
    },
    {
        "createdAt": "2022-10-28T12:41:21.058Z",
        "name": "Stephen Franey",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/2.jpg",
        "id": "13"
    },
    {
        "createdAt": "2022-10-28T17:26:42.915Z",
        "name": "Miss Charlie Considine",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1207.jpg",
        "id": "14"
    },
    {
        "createdAt": "2022-10-28T19:37:50.792Z",
        "name": "Jesse Maggio DDS",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/555.jpg",
        "id": "15"
    },
    {
        "createdAt": "2022-10-29T10:13:34.246Z",
        "name": "Anthony Cummings",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/577.jpg",
        "id": "16"
    },
    {
        "createdAt": "2022-10-29T04:06:23.614Z",
        "name": "Lindsey Gulgowski",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1130.jpg",
        "id": "17"
    },
    {
        "createdAt": "2022-10-28T21:10:12.236Z",
        "name": "Marlene Bogisich",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/401.jpg",
        "id": "18"
    },
    {
        "createdAt": "2022-10-28T22:07:22.096Z",
        "name": "Mercedes Fadel",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/296.jpg",
        "id": "19"
    },
    {
        "createdAt": "2022-10-28T20:40:25.210Z",
        "name": "Lynn Brakus",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/57.jpg",
        "id": "20"
    },
    {
        "createdAt": "2022-10-28T20:55:23.553Z",
        "name": "Mrs. Doug Fahey",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/198.jpg",
        "id": "21"
    },
    {
        "createdAt": "2022-10-29T09:54:32.148Z",
        "name": "Damon Weber",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/840.jpg",
        "id": "22"
    },
    {
        "createdAt": "2022-10-29T03:48:59.050Z",
        "name": "Corey Thiel",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1118.jpg",
        "id": "23"
    },
    {
        "createdAt": "2022-10-28T17:22:18.792Z",
        "name": "Jenny Welch V",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1067.jpg",
        "id": "24"
    },
    {
        "createdAt": "2022-10-29T06:20:23.050Z",
        "name": "Mr. Preston Lindgren",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/633.jpg",
        "id": "25"
    },
    {
        "createdAt": "2022-10-28T17:19:06.037Z",
        "name": "Frankie Hayes",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/343.jpg",
        "id": "26"
    },
    {
        "createdAt": "2022-10-28T17:09:27.837Z",
        "name": "Della VonRueden",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/314.jpg",
        "id": "27"
    },
    {
        "createdAt": "2022-10-28T20:58:25.312Z",
        "name": "Shelley Hansen",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1225.jpg",
        "id": "28"
    },
    {
        "createdAt": "2022-10-28T19:56:21.639Z",
        "name": "Marjorie Douglas",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/960.jpg",
        "id": "29"
    },
    {
        "createdAt": "2022-10-29T00:25:10.672Z",
        "name": "Caleb Franey",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/276.jpg",
        "id": "30"
    },
    {
        "createdAt": "2022-10-28T23:07:02.366Z",
        "name": "Cecilia Swaniawski I",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/469.jpg",
        "id": "31"
    },
    {
        "createdAt": "2022-10-29T03:46:55.485Z",
        "name": "Jacob Stark",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/832.jpg",
        "id": "32"
    },
    {
        "createdAt": "2022-10-29T06:17:43.294Z",
        "name": "Madeline Hammes",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1142.jpg",
        "id": "33"
    },
    {
        "createdAt": "2022-10-29T01:00:39.264Z",
        "name": "Orlando Langosh",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/480.jpg",
        "id": "34"
    },
    {
        "createdAt": "2022-10-29T11:04:12.063Z",
        "name": "Dana Corwin",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/600.jpg",
        "id": "35"
    },
    {
        "createdAt": "2022-10-28T19:49:46.638Z",
        "name": "Marjorie Senger DVM",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1235.jpg",
        "id": "36"
    },
    {
        "createdAt": "2022-10-28T19:18:05.672Z",
        "name": "Tommie Brakus",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/428.jpg",
        "id": "37"
    },
    {
        "createdAt": "2022-10-29T07:50:32.329Z",
        "name": "Carmen Schneider",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/202.jpg",
        "id": "38"
    },
    {
        "createdAt": "2022-10-28T23:22:33.462Z",
        "name": "Dr. Inez Heller",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/375.jpg",
        "id": "39"
    },
    {
        "createdAt": "2022-10-29T04:11:37.389Z",
        "name": "Miss Saul Shanahan",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/150.jpg",
        "id": "40"
    },
    {
        "createdAt": "2022-10-28T17:25:30.572Z",
        "name": "Brendan Cronin",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/832.jpg",
        "id": "41"
    },
    {
        "createdAt": "2022-10-28T17:21:29.912Z",
        "name": "Alton Mann DVM",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/882.jpg",
        "id": "42"
    },
    {
        "createdAt": "2022-10-28T18:46:53.105Z",
        "name": "Joey McDermott",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/390.jpg",
        "id": "43"
    },
    {
        "createdAt": "2022-10-29T00:13:39.197Z",
        "name": "Miss Belinda Romaguera",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1059.jpg",
        "id": "44"
    },
    {
        "createdAt": "2022-10-28T20:24:11.413Z",
        "name": "Dawn Parisian",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1100.jpg",
        "id": "45"
    },
    {
        "createdAt": "2022-10-28T17:33:26.154Z",
        "name": "Dr. Mercedes Volkman",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1106.jpg",
        "id": "46"
    },
    {
        "createdAt": "2022-10-28T12:43:02.689Z",
        "name": "Constance Bernier",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/911.jpg",
        "id": "47"
    },
    {
        "createdAt": "2022-10-28T19:07:59.679Z",
        "name": "Dr. Della Stanton",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/496.jpg",
        "id": "48"
    },
    {
        "createdAt": "2022-10-29T01:54:37.982Z",
        "name": "Phillip Cruickshank PhD",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/65.jpg",
        "id": "49"
    },
    {
        "createdAt": "2022-10-28T16:44:55.307Z",
        "name": "Robin Wilderman Jr.",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1180.jpg",
        "id": "50"
    },
    {
        "createdAt": "2022-10-29T10:37:22.383Z",
        "name": "Olga Bartell",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/74.jpg",
        "id": "51"
    },
    {
        "createdAt": "2022-10-29T00:58:13.901Z",
        "name": "Leo Cronin",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/778.jpg",
        "id": "52"
    },
    {
        "createdAt": "2022-10-29T08:54:29.698Z",
        "name": "Julian Murphy",
        "avatar": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/443.jpg",
        "id": "53"
    }
]
''';
