create table profiles (
  email text primary key not null,
  encrypted_password text not null,
  is_pro boolean not null default false,
  is_business boolean not null default false,
  max_applications int not null default 1,
  current_applications int not null default 0,
  subscription_id text not null default ''
);

create table applications (
  id serial primary key not null,
  owner_email text not null references profiles(email),
  name text not null,
  api_key text unique not null
);
