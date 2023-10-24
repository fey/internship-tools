## prerequesites

* Ruby 3.1.2
* Curl
* Git
* Make
* Github token. [Here](https://github.com/settings/tokens)

## Commands

See *Makefile*

to download:

```bash
EPR_TOKEN=<gh_token> make download-prs
EPR_TOKEN=<gh_token> make download-issues
```

### Useful links

<https://duckdb.org/docs/guides/import/csv_import>

```sql
drop table students; select * from read_csv_auto('students.csv');
```
