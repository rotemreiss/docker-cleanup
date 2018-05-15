# docker-cleanup
Cleanup old Docker components (volumes, containers, images..) to free up some disk space.

Maintainer: Rotem Reiss *[Follow me at Twitter @rotem_reiss](https://twitter.com/rotem_reiss)*

---

## Disclaimer
This tool was written for personal use, therefore I can't guarantee that:
- It will work
- It won't delete anything important

*Make sure you have all the right backups before running the tool.*

## Usage
From your favorite CLI (e.g. bash), run the following command:
`./docker-cleanup.sh`

---

## What does it clean
- Old containers
- Dangling images
- Untaged images
- Dangling images
- Dangling volumes

## Tested OS
The script was only tested on Boot2Docker at this stage.

## Credits
This was written by mixing some online resources and examples.
I also want to thank all those who pushed for Docker's native support in
the dangling filter.

Credits for those I remember: :)
- https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430
