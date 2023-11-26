package repository

import (
	"context"
	"database/sql"

	"github.com/Serares/aws_sam_testing_template/internal/database"
	_ "github.com/lib/pq"
)

// type Repository interface {
// 	Create() (int64, error)
// 	Update() error
// 	ByID(id int64) (, error)
// 	Last() (, error)
// 	Breaks(n int) (, error)
// 	CategorySummary(day time.Time, filter string) (time.Duration, error)
// }

type dbRepo struct {
	db *database.Queries
}

func NewPSQLRepo(dbUrl string) (*dbRepo, error) {
	db, err := sql.Open("postgres", dbUrl)
	if err != nil {
		return nil, err
	}
	// manage the resource usage of the db
	dbQueries := database.New(db)

	return &dbRepo{
		db: dbQueries,
	}, nil
}

func (d *dbRepo) Add() (int64, error) {
	d.db.AddProperty(context.Background(), database.AddPropertyParams{})
	return 0, nil
}
