import 'package:muflix/models/cast.dart';
import 'package:muflix/models/movie.dart';

final mockMovies = [
  Movie(
    id: '1',
    title: 'Cerebral Echoes',
    overview:
        'In a world where memories can be traded as currency, a rogue detective uncovers a conspiracy that threatens to erase the identity of the entire human race. As the lines between reality and simulation blur, he must confront his own fractured past to save a future he no longer recognizes.',
    posterUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuAd4-jUPvzIgYRfRyfIpM252Ikmsku_1Y7co96ciV6pHoF4T-ziMMAyjuiu-CRh1Pd6B5DiTMkj_8oXqP0pvZ4Ef9LgRHN8aMFMpg7gBtkgmG48xxIbae_LCGaszcfUlJrmmx3FJ-M9Bo6HQmNKwPQPMz5CzaTqiSXvjaGo-BX9k4pNzfsaUvv_lzv9BnsBugDhiji7PD6_aqOp_YpCl51iQOhrCj77RvQjn7pz4-yLYEWY0S_xTWs1',
    backdropUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuD5WYEXsdRLdq48glc5SJzhWJH0gBwP5Y17oTJzKa0oMhoXXYlzLJVa2jCv4P9faMdY__5Y84Rv0KARr4KYrJOqhmc8IP_nIWnfj2kNjifzS5ij1cDXds8s2NcG9iD5T5WhPPIpdwZxyd7rYOJjrdFWTN15zgDYVDhEWl1pICOPRpgF7o4uWlVlltzEr-4hC5272J4qGWbTyA10ww5rZ8veWFglyrgfZ918FST54HHMPkO9-btOdEQp',
    rating: 8.9,
    runtime: '2h 14m',
    year: '2024',
    genres: ['Sci-Fi', 'Thriller', 'Drama'],
    cast: [
      Cast(
        name: 'Ethan Vance',
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuD73_AiDLsbughWf85W7d12ecS7y9m_xzBL7JMiaCL6CWA0kp2MosHq24jjoDvWcTbOX5putxXRXfwhK6EgI-dC95BY7fQ4NwLJI3fYzEnVr_kj1kA9q8Yo_P7-lm5BUqMnWdM2FcULVhGrWvm2aT7N3ChfsiaDubG9wSq-DgE-yl-ceaVBReg6RihpU28loxjquUpi-gTmuhMM-C9q5R-VciE4PTzTK4HPHibDQKirBoxMO52JmOZM',
      ),
      Cast(
        name: 'Maya Sterling',
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuCFrOrYqEnZIAYeKTjCt4bVSfLw7Z7sKGhQ--ToyZWnOIxAEgVQzeKx8myxP2bp3NU8c79r9bm3Mios3yPqbipGmNDH4BwhyiJm2krrAO01Y7AP8d3rnm_qx6pgd7BU4NwmvzW-trz3Dh_33C7Vu5p4uI04Zi7HTKw7ePyND_1DV3pq2IV6zZioPpTB2hK-dNDYmui0sbCUed3LvnJHdMUib1ZDC2qcxdMP5mTiL9POoKyKE0_Tcl7r',
      ),
      Cast(
        name: 'Julian Cross',
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuCOyWi0tdnNXHa4uHtqzwC3--NzS7mWR4KIx-fv8UbEulOaFydUO5kvZhOlGVtZcGYF2kiegZJa-yOX-dJMw9aN5NhFKsI5DY8LjrrajqPjjJH6II_5jm018vJFcJCkb9VVVLYJhxGNLbTKlh10x0b50k9ikqKlCnykIltbsQgxpypnhB7DcHnrSDHH_n52TKeOu4QEplqdA1AUgBRmqrRNjkYZWel-Or6XRX2HY2ssOhPnlVyhM1yO',
      ),
      Cast(
        name: 'Sarah J. Miller',
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDJZQh8md2PKm_gr1V3yl9QdLLJB0sTHgBLePYnkVLAW_YzynW_w2Ut0ifPtsmoH1UNQWZrn9hNOz3N1PrDrSio3s1PNBCGqAcnABIWJH_LC8zGqsXLgGqnmuOVT7f_Dewm9-gYLbhfjn-UaXohSpDPzp5yN1gRJ-K0qoeLUKK55JCOYuyMhNzOMyf49zBg5E0T6JYv1Pa_KIL8pRZ892OZM6qeXrNYLTD07DZnTm0qiPWFn6gz9bwp',
      ),
      Cast(
        name: 'David Thorne',
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuB9WUSgw3qFiRFXaukQpjADoDfrHLt-iyenFDtdLvPwWOXP8wqiZL4-UqLfzx9bfmQdEJlx1df4O70_c03h8xc0nQq0PSRBUYrnPergw2h0eHxPbILHjS2bWBzakXItiLIHixEZVZHaYKX74C78JQqzUufkjEQgdHQ7RFPTX3zE-Vtp3JL6G1Hx1CLl7ch8LUbUFz_8J3mM9qDMGp2qeI3X7retCXEvrvN2e0rRWkj-JDsueJVeX723',
      ),
    ],
  ),
  // Add more movies (you can copy from the HTML mock data)
  Movie(
    id: '2',
    title: 'Void Runner',
    overview:
        'A fugitive courier races across a dystopian galaxy carrying a data chip that could bring down a tyrannical regime. With bounty hunters on his tail and a mysterious AI guiding him, he must survive long enough to deliver the truth.',
    posterUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuBtJ-GYUe2Qqwc2aIbhPst3ru3pM1E2a163oHTUHfMbxp8yyiUGv79WVkIB3THeD0dyQ6vzrxacjNeOoeiEZQinv0fdHggeyzrRBY7Ffonw-9xQtBkk1WYvjWHZTgzGbRkeQ8ddjCxyXaSIJIcEq22XsI7-Q-7FwAXZRcb4EA44asbVWsV2MY9itF50URdkRsLaLpk6KrHMb5NJOxEPO5raxvZ5YlRNtX5dS9JeYSfsMF59ofpDrCtu',
    backdropUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuBMA20d1Gtgfv3PE-v3GVtPthoXRVWGO8QK8ZfiKD_yG4uN-qys2MeTPEFqHGFhaiJhmsefkbf1PmrgZYKN12ceK_g6YKMneNZjI6mwp1lzqrroGY9Br1nUE1E9sEezW16WFg50jpIVGfp6W4bv-9yX1xrDseJsAqyjcV_QLC1rNsfwW0Lm3kk990ABstH_24UHYNoy9IXTXTjrpDAtjnE1fx1MpxFjMs5RNhtEzBVsNEpNAW-hg8VP',
    rating: 7.8,
    runtime: '2h 08m',
    year: '2025',
    genres: ['Action', 'Sci-Fi', 'Thriller'],
    cast: [],
  ),
  Movie(
    id: '3',
    title: 'The Frozen Horizon',
    overview:
        'Set in a near-future where Earth\'s poles have shifted, a team of scientists embarks on a perilous mission to a remote research station. What they find there will change humanity forever.',
    posterUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuBprejgebe7UwQfu0FCvdhNYUqX0J3xg6PxWE95UhiXN7GwtvnO5Jr1PS1Y0SJ77hYqXzL7b13hiv8udjKHWKp8n5spnF5xDTmmQHARCUWX8dt3vp-IxtppjGh6zKzXNhIBVlKzh9L1RuU90T5B2oDC0gqcr4d3vRttFXcYxo69H8K4ggH89OQ6WdKry5fYAY8a3NSAbLXPNGguxV8HtAnysB7xidQHrrPYpL2Ne0nRbuOA9h9e1Cyu',
    backdropUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuBprejgebe7UwQfu0FCvdhNYUqX0J3xg6PxWE95UhiXN7GwtvnO5Jr1PS1Y0SJ77hYqXzL7b13hiv8udjKHWKp8n5spnF5xDTmmQHARCUWX8dt3vp-IxtppjGh6zKzXNhIBVlKzh9L1RuU90T5B2oDC0gqcr4d3vRttFXcYxo69H8K4ggH89OQ6WdKry5fYAY8a3NSAbLXPNGguxV8HtAnysB7xidQHrrPYpL2Ne0nRbuOA9h9e1Cyu',
    rating: 8.4,
    runtime: '1h 55m',
    year: '2024',
    genres: ['Adventure', 'Drama', 'Sci-Fi'],
    cast: [],
  ),
  Movie(
    id: '4',
    title: 'Neon Circuit',
    overview:
        'In a city addicted to augmented reality, a hacker discovers a deadly virus that infects human minds. She must race against time to shut down the system before it turns the population into mindless drones.',
    posterUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuBPgvhlGUgoJ-ABesVsTuM681Mk7evPUuYunacXfYoEUFpPMDnnMeKXx0zOJzzqjRDtH_GfRNJ6zyXDi1R6I1u_ENetbDfaFeuQZtUqF_lUp0ufBuM8pT4MnyH73Qzo-9UE9QhPEUgZze0uJkPuNYkRyUAD2s8kXjuRq-uzw_OWA9PzF2XSwHRRsPZDSJnwv0vv_93MJK7icZKMX3dKRcTJrJ90rz8V8Ujf0B1X6Tp5YLazKf8i2mkP',
    backdropUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuBPgvhlGUgoJ-ABesVsTuM681Mk7evPUuYunacXfYoEUFpPMDnnMeKXx0zOJzzqjRDtH_GfRNJ6zyXDi1R6I1u_ENetbDfaFeuQZtUqF_lUp0ufBuM8pT4MnyH73Qzo-9UE9QhPEUgZze0uJkPuNYkRyUAD2s8kXjuRq-uzw_OWA9PzF2XSwHRRsPZDSJnwv0vv_93MJK7icZKMX3dKRcTJrJ90rz8V8Ujf0B1X6Tp5YLazKf8i2mkP',
    rating: 7.5,
    runtime: '2h 02m',
    year: '2025',
    genres: ['Cyberpunk', 'Thriller', 'Action'],
    cast: [],
  ),
  Movie(
    id: '5',
    title: 'Inertia',
    overview:
        'When a deep space mining vessel is struck by a mysterious anomaly, the sole survivor must navigate a collapsing ship with only his wits and a malfunctioning AI. A gripping survival thriller.',
    posterUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuByq_vFmzhlNiMmJ24lfCFIWEW1K_I6IaLsc_BxsIJCeXX2-lCNnjXexJR9xxrxrmltRnZBfldn87rnQ2mtBMbpCl-4niwn25xnx_EH5QEik3-JOqlgTHeNdhp3r78dMMmPSgcFKdHqmig9OQeM9XwaPWao1f76nyswK80G-wxpTVuKgkCcrPaZMYIZWCVvDLxDCZLOLtUpz8FNcKUlEoGAdm4OPQw6q9PKEvqDaGrkIcdIpxklp_Qa',
    backdropUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuByq_vFmzhlNiMmJ24lfCFIWEW1K_I6IaLsc_BxsIJCeXX2-lCNnjXexJR9xxrxrmltRnZBfldn87rnQ2mtBMbpCl-4niwn25xnx_EH5QEik3-JOqlgTHeNdhp3r78dMMmPSgcFKdHqmig9OQeM9XwaPWao1f76nyswK80G-wxpTVuKgkCcrPaZMYIZWCVvDLxDCZLOLtUpz8FNcKUlEoGAdm4OPQw6q9PKEvqDaGrkIcdIpxklp_Qa',
    rating: 8.0,
    runtime: '1h 48m',
    year: '2024',
    genres: ['Sci-Fi', 'Thriller'],
    cast: [],
  ),
];