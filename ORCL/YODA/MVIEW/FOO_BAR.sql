CREATE MATERIALIZED VIEW "YODA"."FOO_BAR" ("FOO", "BAR", "FOO_ROWID", "BAR_ROWID")
  SEGMENT CREATION DEFERRED
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH COMPLETE ON COMMIT
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT foo.foo, 
                                    bar.bar, 
                                    foo.ROWID AS foo_rowid, 
                                    bar.ROWID AS bar_rowid 
                               FROM foo, bar
                              WHERE foo.foo = bar.foo;
