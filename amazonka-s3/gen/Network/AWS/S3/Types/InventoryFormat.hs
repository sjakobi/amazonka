{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryFormat
  ( InventoryFormat
      ( ..,
        InventoryFormatCSV,
        InventoryFormatORC,
        InventoryFormatParquet
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype InventoryFormat = InventoryFormat'
  { fromInventoryFormat ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern InventoryFormatCSV :: InventoryFormat
pattern InventoryFormatCSV = InventoryFormat' "CSV"

pattern InventoryFormatORC :: InventoryFormat
pattern InventoryFormatORC = InventoryFormat' "ORC"

pattern InventoryFormatParquet :: InventoryFormat
pattern InventoryFormatParquet = InventoryFormat' "Parquet"

{-# COMPLETE
  InventoryFormatCSV,
  InventoryFormatORC,
  InventoryFormatParquet,
  InventoryFormat'
  #-}

instance Prelude.FromText InventoryFormat where
  parser = InventoryFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventoryFormat where
  toText (InventoryFormat' x) = x

instance Prelude.Hashable InventoryFormat

instance Prelude.NFData InventoryFormat

instance Prelude.ToByteString InventoryFormat

instance Prelude.ToQuery InventoryFormat

instance Prelude.ToHeader InventoryFormat

instance Prelude.FromXML InventoryFormat where
  parseXML = Prelude.parseXMLText "InventoryFormat"

instance Prelude.ToXML InventoryFormat where
  toXML = Prelude.toXMLText
