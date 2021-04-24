{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.AttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.AttributeType
  ( AttributeType
      ( ..,
        ATAfter,
        ATBefore,
        ATBetween,
        ATContains,
        ATExclusive,
        ATInclusive,
        ATON
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AttributeType = AttributeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ATAfter :: AttributeType
pattern ATAfter = AttributeType' "AFTER"

pattern ATBefore :: AttributeType
pattern ATBefore = AttributeType' "BEFORE"

pattern ATBetween :: AttributeType
pattern ATBetween = AttributeType' "BETWEEN"

pattern ATContains :: AttributeType
pattern ATContains = AttributeType' "CONTAINS"

pattern ATExclusive :: AttributeType
pattern ATExclusive = AttributeType' "EXCLUSIVE"

pattern ATInclusive :: AttributeType
pattern ATInclusive = AttributeType' "INCLUSIVE"

pattern ATON :: AttributeType
pattern ATON = AttributeType' "ON"

{-# COMPLETE
  ATAfter,
  ATBefore,
  ATBetween,
  ATContains,
  ATExclusive,
  ATInclusive,
  ATON,
  AttributeType'
  #-}

instance FromText AttributeType where
  parser = (AttributeType' . mk) <$> takeText

instance ToText AttributeType where
  toText (AttributeType' ci) = original ci

instance Hashable AttributeType

instance NFData AttributeType

instance ToByteString AttributeType

instance ToQuery AttributeType

instance ToHeader AttributeType

instance ToJSON AttributeType where
  toJSON = toJSONText

instance FromJSON AttributeType where
  parseJSON = parseJSONText "AttributeType"
