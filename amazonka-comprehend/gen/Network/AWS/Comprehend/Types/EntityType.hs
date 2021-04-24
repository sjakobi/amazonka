{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntityType
  ( EntityType
      ( ..,
        CommercialItem,
        Date,
        Event,
        Location,
        Organization,
        Other,
        Person,
        Quantity,
        Title
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EntityType = EntityType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CommercialItem :: EntityType
pattern CommercialItem = EntityType' "COMMERCIAL_ITEM"

pattern Date :: EntityType
pattern Date = EntityType' "DATE"

pattern Event :: EntityType
pattern Event = EntityType' "EVENT"

pattern Location :: EntityType
pattern Location = EntityType' "LOCATION"

pattern Organization :: EntityType
pattern Organization = EntityType' "ORGANIZATION"

pattern Other :: EntityType
pattern Other = EntityType' "OTHER"

pattern Person :: EntityType
pattern Person = EntityType' "PERSON"

pattern Quantity :: EntityType
pattern Quantity = EntityType' "QUANTITY"

pattern Title :: EntityType
pattern Title = EntityType' "TITLE"

{-# COMPLETE
  CommercialItem,
  Date,
  Event,
  Location,
  Organization,
  Other,
  Person,
  Quantity,
  Title,
  EntityType'
  #-}

instance FromText EntityType where
  parser = (EntityType' . mk) <$> takeText

instance ToText EntityType where
  toText (EntityType' ci) = original ci

instance Hashable EntityType

instance NFData EntityType

instance ToByteString EntityType

instance ToQuery EntityType

instance ToHeader EntityType

instance FromJSON EntityType where
  parseJSON = parseJSONText "EntityType"
