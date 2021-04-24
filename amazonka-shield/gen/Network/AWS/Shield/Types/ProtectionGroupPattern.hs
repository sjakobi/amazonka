{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.ProtectionGroupPattern
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProtectionGroupPattern
  ( ProtectionGroupPattern
      ( ..,
        All,
        Arbitrary,
        ByResourceType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProtectionGroupPattern
  = ProtectionGroupPattern'
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

pattern All :: ProtectionGroupPattern
pattern All = ProtectionGroupPattern' "ALL"

pattern Arbitrary :: ProtectionGroupPattern
pattern Arbitrary = ProtectionGroupPattern' "ARBITRARY"

pattern ByResourceType :: ProtectionGroupPattern
pattern ByResourceType = ProtectionGroupPattern' "BY_RESOURCE_TYPE"

{-# COMPLETE
  All,
  Arbitrary,
  ByResourceType,
  ProtectionGroupPattern'
  #-}

instance FromText ProtectionGroupPattern where
  parser = (ProtectionGroupPattern' . mk) <$> takeText

instance ToText ProtectionGroupPattern where
  toText (ProtectionGroupPattern' ci) = original ci

instance Hashable ProtectionGroupPattern

instance NFData ProtectionGroupPattern

instance ToByteString ProtectionGroupPattern

instance ToQuery ProtectionGroupPattern

instance ToHeader ProtectionGroupPattern

instance ToJSON ProtectionGroupPattern where
  toJSON = toJSONText

instance FromJSON ProtectionGroupPattern where
  parseJSON = parseJSONText "ProtectionGroupPattern"
