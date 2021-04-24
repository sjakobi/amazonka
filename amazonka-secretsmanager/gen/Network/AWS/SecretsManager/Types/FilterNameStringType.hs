{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        All,
        Description,
        Name,
        PrimaryRegion,
        TagKey,
        TagValue
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FilterNameStringType
  = FilterNameStringType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern All :: FilterNameStringType
pattern All = FilterNameStringType' "all"

pattern Description :: FilterNameStringType
pattern Description = FilterNameStringType' "description"

pattern Name :: FilterNameStringType
pattern Name = FilterNameStringType' "name"

pattern PrimaryRegion :: FilterNameStringType
pattern PrimaryRegion = FilterNameStringType' "primary-region"

pattern TagKey :: FilterNameStringType
pattern TagKey = FilterNameStringType' "tag-key"

pattern TagValue :: FilterNameStringType
pattern TagValue = FilterNameStringType' "tag-value"

{-# COMPLETE
  All,
  Description,
  Name,
  PrimaryRegion,
  TagKey,
  TagValue,
  FilterNameStringType'
  #-}

instance FromText FilterNameStringType where
  parser = (FilterNameStringType' . mk) <$> takeText

instance ToText FilterNameStringType where
  toText (FilterNameStringType' ci) = original ci

instance Hashable FilterNameStringType

instance NFData FilterNameStringType

instance ToByteString FilterNameStringType

instance ToQuery FilterNameStringType

instance ToHeader FilterNameStringType

instance ToJSON FilterNameStringType where
  toJSON = toJSONText
