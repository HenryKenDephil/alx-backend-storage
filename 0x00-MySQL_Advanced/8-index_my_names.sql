--optimize simple search
--sql script that creates an index on the table

CREATE INDEX idx_name_first ON names(name[0]);