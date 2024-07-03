enum SortBy {
  popularity('popularity.desc'),
  latest('primary_release_date.desc'),
  voteCount('vote_count.desc');

  final String key;

  const SortBy(this.key);
}
