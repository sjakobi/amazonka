{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.EventCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.EventCategory
  ( EventCategory
      ( ..,
        Insight
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventCategory = EventCategory' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Insight :: EventCategory
pattern Insight = EventCategory' "insight"

{-# COMPLETE
  Insight,
  EventCategory'
  #-}

instance FromText EventCategory where
  parser = (EventCategory' . mk) <$> takeText

instance ToText EventCategory where
  toText (EventCategory' ci) = original ci

instance Hashable EventCategory

instance NFData EventCategory

instance ToByteString EventCategory

instance ToQuery EventCategory

instance ToHeader EventCategory

instance ToJSON EventCategory where
  toJSON = toJSONText
