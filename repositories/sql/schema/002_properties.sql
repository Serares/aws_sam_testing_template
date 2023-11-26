-- +goose Up
CREATE TABLE properties (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    title TEXT NOT NULL,
    floor VARCHAR(255) NOT NULL UNIQUE,
    published_at TIMESTAMP,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE
);
-- +goose Down
DROP TABLE properties;