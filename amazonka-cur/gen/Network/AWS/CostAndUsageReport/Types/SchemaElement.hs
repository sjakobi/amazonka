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
-- Module      : Network.AWS.CostAndUsageReport.Types.SchemaElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostAndUsageReport.Types.SchemaElement
  ( SchemaElement
      ( ..,
        SchemaElementRESOURCES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Whether or not AWS includes resource IDs in the report.
newtype SchemaElement = SchemaElement'
  { fromSchemaElement ::
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

pattern SchemaElementRESOURCES :: SchemaElement
pattern SchemaElementRESOURCES = SchemaElement' "RESOURCES"

{-# COMPLETE
  SchemaElementRESOURCES,
  SchemaElement'
  #-}

instance Prelude.FromText SchemaElement where
  parser = SchemaElement' Prelude.<$> Prelude.takeText

instance Prelude.ToText SchemaElement where
  toText (SchemaElement' x) = x

instance Prelude.Hashable SchemaElement

instance Prelude.NFData SchemaElement

instance Prelude.ToByteString SchemaElement

instance Prelude.ToQuery SchemaElement

instance Prelude.ToHeader SchemaElement

instance Prelude.ToJSON SchemaElement where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SchemaElement where
  parseJSON = Prelude.parseJSONText "SchemaElement"
