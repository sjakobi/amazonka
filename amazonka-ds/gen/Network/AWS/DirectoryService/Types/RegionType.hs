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
-- Module      : Network.AWS.DirectoryService.Types.RegionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RegionType
  ( RegionType
      ( ..,
        RegionTypeAdditional,
        RegionTypePrimary
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RegionType = RegionType'
  { fromRegionType ::
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

pattern RegionTypeAdditional :: RegionType
pattern RegionTypeAdditional = RegionType' "Additional"

pattern RegionTypePrimary :: RegionType
pattern RegionTypePrimary = RegionType' "Primary"

{-# COMPLETE
  RegionTypeAdditional,
  RegionTypePrimary,
  RegionType'
  #-}

instance Prelude.FromText RegionType where
  parser = RegionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RegionType where
  toText (RegionType' x) = x

instance Prelude.Hashable RegionType

instance Prelude.NFData RegionType

instance Prelude.ToByteString RegionType

instance Prelude.ToQuery RegionType

instance Prelude.ToHeader RegionType

instance Prelude.FromJSON RegionType where
  parseJSON = Prelude.parseJSONText "RegionType"
