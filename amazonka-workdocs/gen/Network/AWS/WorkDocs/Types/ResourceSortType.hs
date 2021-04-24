{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ResourceSortType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourceSortType
  ( ResourceSortType
      ( ..,
        Date,
        Name
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceSortType = ResourceSortType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Date :: ResourceSortType
pattern Date = ResourceSortType' "DATE"

pattern Name :: ResourceSortType
pattern Name = ResourceSortType' "NAME"

{-# COMPLETE
  Date,
  Name,
  ResourceSortType'
  #-}

instance FromText ResourceSortType where
  parser = (ResourceSortType' . mk) <$> takeText

instance ToText ResourceSortType where
  toText (ResourceSortType' ci) = original ci

instance Hashable ResourceSortType

instance NFData ResourceSortType

instance ToByteString ResourceSortType

instance ToQuery ResourceSortType

instance ToHeader ResourceSortType

instance ToJSON ResourceSortType where
  toJSON = toJSONText
