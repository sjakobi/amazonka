{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Order
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Order
  ( Order
      ( ..,
        Ascending,
        Descending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
data Order = Order' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ascending :: Order
pattern Ascending = Order' "ASCENDING"

pattern Descending :: Order
pattern Descending = Order' "DESCENDING"

{-# COMPLETE
  Ascending,
  Descending,
  Order'
  #-}

instance FromText Order where
  parser = (Order' . mk) <$> takeText

instance ToText Order where
  toText (Order' ci) = original ci

instance Hashable Order

instance NFData Order

instance ToByteString Order

instance ToQuery Order

instance ToHeader Order

instance ToJSON Order where
  toJSON = toJSONText
