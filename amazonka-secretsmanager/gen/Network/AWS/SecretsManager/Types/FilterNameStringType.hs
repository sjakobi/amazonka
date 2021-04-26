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
-- Module      : Network.AWS.SecretsManager.Types.FilterNameStringType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.FilterNameStringType
  ( FilterNameStringType
      ( ..,
        FilterNameStringTypeAll,
        FilterNameStringTypeDescription,
        FilterNameStringTypeName,
        FilterNameStringTypePrimaryRegion,
        FilterNameStringTypeTagKey,
        FilterNameStringTypeTagValue
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FilterNameStringType = FilterNameStringType'
  { fromFilterNameStringType ::
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

pattern FilterNameStringTypeAll :: FilterNameStringType
pattern FilterNameStringTypeAll = FilterNameStringType' "all"

pattern FilterNameStringTypeDescription :: FilterNameStringType
pattern FilterNameStringTypeDescription = FilterNameStringType' "description"

pattern FilterNameStringTypeName :: FilterNameStringType
pattern FilterNameStringTypeName = FilterNameStringType' "name"

pattern FilterNameStringTypePrimaryRegion :: FilterNameStringType
pattern FilterNameStringTypePrimaryRegion = FilterNameStringType' "primary-region"

pattern FilterNameStringTypeTagKey :: FilterNameStringType
pattern FilterNameStringTypeTagKey = FilterNameStringType' "tag-key"

pattern FilterNameStringTypeTagValue :: FilterNameStringType
pattern FilterNameStringTypeTagValue = FilterNameStringType' "tag-value"

{-# COMPLETE
  FilterNameStringTypeAll,
  FilterNameStringTypeDescription,
  FilterNameStringTypeName,
  FilterNameStringTypePrimaryRegion,
  FilterNameStringTypeTagKey,
  FilterNameStringTypeTagValue,
  FilterNameStringType'
  #-}

instance Prelude.FromText FilterNameStringType where
  parser = FilterNameStringType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FilterNameStringType where
  toText (FilterNameStringType' x) = x

instance Prelude.Hashable FilterNameStringType

instance Prelude.NFData FilterNameStringType

instance Prelude.ToByteString FilterNameStringType

instance Prelude.ToQuery FilterNameStringType

instance Prelude.ToHeader FilterNameStringType

instance Prelude.ToJSON FilterNameStringType where
  toJSON = Prelude.toJSONText
