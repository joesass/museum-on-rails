# Museum On Rails


## Relationships

A museum app with displays, artists, and mediums.

artists have many displays, and many artistMediums, and many
mediums through artistMediums

mediums have many artistmedia, and many artists through artistmedia,
and displays through artists

artistMediums belongs to an artist, and belongs to a medium

displays belong to an artist
displays belong to a medium

now artist can belong to a medium through a display
so I can remove the artist medium table

- Add column for medium_id in displays
- Remove table artistmedia
- Add relationships into displays and artists and mediums
- remove unnecessary relationships

### Attributes for Objects

Artist - name
Medium - name
ArtistMedia - artist_id, medium_id
Display - title

### Steps to build the app:


- create database migrations - DONE
- create models - DONE
- create routes, controllers, and views - Done
- Add relationships to models - Done
- Fill in actions and views - Done
  - new
  - create
  - show
  - index
  - edit
  - update
  - Fix New Display form to include artist and medium from checkboxes
- create seed data from [artsmia collection](https://github.com/artsmia/collection)
