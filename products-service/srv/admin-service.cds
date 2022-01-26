/*
// old definition, changed because we moved part to schema cds in db folder
service AdminService {
    entity Products {
        key ID : Integer;
        title  : String(111);
        descr  : String(1111);
    }
}
*/

using { sap.capire.products as db } from '../db/schema';

service AdminService {
    entity Products   as projection on db.Products;
    entity Categories as projection on db.Categories;
}
