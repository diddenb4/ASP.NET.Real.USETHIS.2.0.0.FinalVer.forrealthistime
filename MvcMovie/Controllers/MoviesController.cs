// filter out null genres when building the SelectList
Genres = new SelectList(await genreQuery.Where(g => g != null).Distinct().ToListAsync()),