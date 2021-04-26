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
-- Module      : Network.AWS.ElasticSearch.Types.PackageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.PackageType
  ( PackageType
      ( ..,
        PackageTypeTXTDICTIONARY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PackageType = PackageType'
  { fromPackageType ::
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

pattern PackageTypeTXTDICTIONARY :: PackageType
pattern PackageTypeTXTDICTIONARY = PackageType' "TXT-DICTIONARY"

{-# COMPLETE
  PackageTypeTXTDICTIONARY,
  PackageType'
  #-}

instance Prelude.FromText PackageType where
  parser = PackageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PackageType where
  toText (PackageType' x) = x

instance Prelude.Hashable PackageType

instance Prelude.NFData PackageType

instance Prelude.ToByteString PackageType

instance Prelude.ToQuery PackageType

instance Prelude.ToHeader PackageType

instance Prelude.ToJSON PackageType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PackageType where
  parseJSON = Prelude.parseJSONText "PackageType"
