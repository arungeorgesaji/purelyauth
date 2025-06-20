create table profiles (
  email text primary key not null,
  encrypted_password text not null,
  max_applications int not null default 1,
  current_applications int not null default 0,
);

create table applications (
  id serial primary key not null,
  owner_email text not null references profiles(email),
  name text not null,
  api_key text unique not null
);
