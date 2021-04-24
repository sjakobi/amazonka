{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.UserFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserFilterType
  ( UserFilterType
      ( ..,
        ActivePending,
        All
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UserFilterType = UserFilterType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ActivePending :: UserFilterType
pattern ActivePending = UserFilterType' "ACTIVE_PENDING"

pattern All :: UserFilterType
pattern All = UserFilterType' "ALL"

{-# COMPLETE
  ActivePending,
  All,
  UserFilterType'
  #-}

instance FromText UserFilterType where
  parser = (UserFilterType' . mk) <$> takeText

instance ToText UserFilterType where
  toText (UserFilterType' ci) = original ci

instance Hashable UserFilterType

instance NFData UserFilterType

instance ToByteString UserFilterType

instance ToQuery UserFilterType

instance ToHeader UserFilterType

instance ToJSON UserFilterType where
  toJSON = toJSONText
