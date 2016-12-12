# Sample app for Bullet gem

## Setup

- Clone.
- `cd`
- `bin/setup`

## Steps to reproduce

- `rails s`
- Open [http://localhost/users/1](http://localhost/users/1)
- See

  ```
  user: max N+1 Query detected User => [:projects] Add to your finder: :includes => [:projects]
  ```

## License

MIT
