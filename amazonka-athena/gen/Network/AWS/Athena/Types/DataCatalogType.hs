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
-- Module      : Network.AWS.Athena.Types.DataCatalogType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.DataCatalogType
  ( DataCatalogType
      ( ..,
        DataCatalogTypeGLUE,
        DataCatalogTypeHIVE,
        DataCatalogTypeLAMBDA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataCatalogType = DataCatalogType'
  { fromDataCatalogType ::
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

pattern DataCatalogTypeGLUE :: DataCatalogType
pattern DataCatalogTypeGLUE = DataCatalogType' "GLUE"

pattern DataCatalogTypeHIVE :: DataCatalogType
pattern DataCatalogTypeHIVE = DataCatalogType' "HIVE"

pattern DataCatalogTypeLAMBDA :: DataCatalogType
pattern DataCatalogTypeLAMBDA = DataCatalogType' "LAMBDA"

{-# COMPLETE
  DataCatalogTypeGLUE,
  DataCatalogTypeHIVE,
  DataCatalogTypeLAMBDA,
  DataCatalogType'
  #-}

instance Prelude.FromText DataCatalogType where
  parser = DataCatalogType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataCatalogType where
  toText (DataCatalogType' x) = x

instance Prelude.Hashable DataCatalogType

instance Prelude.NFData DataCatalogType

instance Prelude.ToByteString DataCatalogType

instance Prelude.ToQuery DataCatalogType

instance Prelude.ToHeader DataCatalogType

instance Prelude.ToJSON DataCatalogType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DataCatalogType where
  parseJSON = Prelude.parseJSONText "DataCatalogType"
