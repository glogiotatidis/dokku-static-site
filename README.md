# Dokku static site

This is a reusable Docker image that allows to deploy static sites to Dokku with Dockerfile (and without using buildbacks).

## HOW TO

1. Put your static site into `html/` folder in the root of your project.

2. Create `Dockerfile` in the root of your static site with the following contents:

```Dockerfile
FROM giorgos/dokku-static-site
```

3. Push the project to Dokku as usual:

```bash
DOKKU_HOST=dokku.me dokku-client.sh apps:create mysite
git push dokku master
```

The site is now available at <http://mysite.dokku.me>
