/*------------------------------------------------------------------------
  File        : ItemDataset.i
  Purpose     : Dataset definition for Item entity
  Syntax      : 
  Description : 
  Author(s)   : 
  Created     : 
  Notes       : 
----------------------------------------------------------------------*/

/* Define temp-table for Item */
DEFINE TEMP-TABLE ttItem BEFORE-TABLE bttItem
    FIELD ItemNum  AS INTEGER INITIAL "0" LABEL "Item Num"
    FIELD ItemName AS CHARACTER            LABEL "Item Name"
    FIELD Price    AS DECIMAL  INITIAL "0" LABEL "Price"
    FIELD OnHand   AS INTEGER  INITIAL "0" LABEL "On Hand"
    FIELD CatPage  AS INTEGER  INITIAL "0" LABEL "Cat Page"
    FIELD CatDescription AS CHARACTER      LABEL "Cat Description"
    FIELD Weight   AS DECIMAL  INITIAL "0" LABEL "Weight"
    FIELD Special  AS LOGICAL  INITIAL "no" LABEL "Special"
    FIELD Supplier1 AS INTEGER INITIAL "0" LABEL "Supplier1"
    FIELD Supplier2 AS INTEGER INITIAL "0" LABEL "Supplier2"
    INDEX ItemNum IS PRIMARY UNIQUE ItemNum ASCENDING.

/* Define dataset for Item */
DEFINE DATASET dsItem FOR ttItem.
