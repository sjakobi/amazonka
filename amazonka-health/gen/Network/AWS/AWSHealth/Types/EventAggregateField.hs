{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventAggregateField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventAggregateField
  ( EventAggregateField
      ( ..,
        EventTypeCategory
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventAggregateField
  = EventAggregateField'
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

pattern EventTypeCategory :: EventAggregateField
pattern EventTypeCategory = EventAggregateField' "eventTypeCategory"

{-# COMPLETE
  EventTypeCategory,
  EventAggregateField'
  #-}

instance FromText EventAggregateField where
  parser = (EventAggregateField' . mk) <$> takeText

instance ToText EventAggregateField where
  toText (EventAggregateField' ci) = original ci

instance Hashable EventAggregateField

instance NFData EventAggregateField

instance ToByteString EventAggregateField

instance ToQuery EventAggregateField

instance ToHeader EventAggregateField

instance ToJSON EventAggregateField where
  toJSON = toJSONText
