# tkambler/slate-builder

Docker image. Compiles documentation with Slate.

Run it like so:

```bash
docker \
    run \
    --rm \
    -v $(pwd):/usr/src/app/source \ # Documentation
    -v $(pwd)/build:/usr/src/app/build \ # Build destination
    tkambler/slate-builder
```

## Related Resources

- [Slate](https://github.com/lord/slate)