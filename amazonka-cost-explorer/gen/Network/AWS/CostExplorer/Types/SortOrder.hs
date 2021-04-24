{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.SortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SortOrder
  ( SortOrder
      ( ..,
        Ascending,
        Descending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortOrder = SortOrder' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ascending :: SortOrder
pattern Ascending = SortOrder' "ASCENDING"

pattern Descending :: SortOrder
pattern Descending = SortOrder' "DESCENDING"

{-# COMPLETE
  Ascending,
  Descending,
  SortOrder'
  #-}

instance FromText SortOrder where
  parser = (SortOrder' . mk) <$> takeText

instance ToText SortOrder where
  toText (SortOrder' ci) = original ci

instance Hashable SortOrder

instance NFData SortOrder

instance ToByteString SortOrder

instance ToQuery SortOrder

instance ToHeader SortOrder

instance ToJSON SortOrder where
  toJSON = toJSONText
