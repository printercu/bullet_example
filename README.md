# Sample app for Bullet gem

## Setup

- Clone.
- `cd`
- `bin/setup` or `bin/update`

## Steps to reproduce

- `rails s`
- Open [http://localhost:3000/projects](http://localhost:3000/projects)
- See 2 warnings.
- Click links to see different warnings.
- Remove line with `.order` in `projects/index.html.erb` to see warnings disappear.

## Already fixed:

## Steps to reproduce

- `rails s`
- Open [http://localhost:3000/users/1](http://localhost:3000/users/1)
- See

  ```
  user: max N+1 Query detected User => [:projects] Add to your finder: :includes => [:projects]
  ```

## License

MIT
