# Kelly on Rails

Personal website for kellypacker.com

**Regenerate images**

```
rake paperclip:refresh CLASS=Artwork
heroku run rake paperclip:refresh CLASS=ArtGroup
```

## Sitemap

Sitemap Generator [https://github.com/kjvarga/sitemap_generator](https://github.com/kjvarga/sitemap_generator)
Sitemap is in /public folder

```
rake sitemap:refresh:no_ping
rake sitemap:refresh
```
