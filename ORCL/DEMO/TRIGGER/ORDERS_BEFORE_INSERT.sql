-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : orders_before_insert
SET search_path = demo,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS orders_before_insert ON orders CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : orders_before_insert
SET search_path = demo,oracle,dmap_extension,public;
CREATE TRIGGER "orders_before_insert"
BEFORE INSERT ON orders FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_orders_before_insert();
