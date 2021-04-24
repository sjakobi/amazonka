{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SortDirectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SortDirectionType
  ( SortDirectionType
      ( ..,
        Ascending,
        Descending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortDirectionType = SortDirectionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ascending :: SortDirectionType
pattern Ascending = SortDirectionType' "ASCENDING"

pattern Descending :: SortDirectionType
pattern Descending = SortDirectionType' "DESCENDING"

{-# COMPLETE
  Ascending,
  Descending,
  SortDirectionType'
  #-}

instance FromText SortDirectionType where
  parser = (SortDirectionType' . mk) <$> takeText

instance ToText SortDirectionType where
  toText (SortDirectionType' ci) = original ci

instance Hashable SortDirectionType

instance NFData SortDirectionType

instance ToByteString SortDirectionType

instance ToQuery SortDirectionType

instance ToHeader SortDirectionType

instance ToJSON SortDirectionType where
  toJSON = toJSONText
