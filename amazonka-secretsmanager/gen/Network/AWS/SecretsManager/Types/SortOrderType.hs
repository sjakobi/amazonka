{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.Types.SortOrderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.SortOrderType
  ( SortOrderType
      ( ..,
        Asc,
        Desc
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortOrderType = SortOrderType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Asc :: SortOrderType
pattern Asc = SortOrderType' "asc"

pattern Desc :: SortOrderType
pattern Desc = SortOrderType' "desc"

{-# COMPLETE
  Asc,
  Desc,
  SortOrderType'
  #-}

instance FromText SortOrderType where
  parser = (SortOrderType' . mk) <$> takeText

instance ToText SortOrderType where
  toText (SortOrderType' ci) = original ci

instance Hashable SortOrderType

instance NFData SortOrderType

instance ToByteString SortOrderType

instance ToQuery SortOrderType

instance ToHeader SortOrderType

instance ToJSON SortOrderType where
  toJSON = toJSONText
