{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ListWorkteamsSortByOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListWorkteamsSortByOptions
  ( ListWorkteamsSortByOptions
      ( ..,
        LCreateDate,
        LName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ListWorkteamsSortByOptions
  = ListWorkteamsSortByOptions'
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

pattern LCreateDate :: ListWorkteamsSortByOptions
pattern LCreateDate = ListWorkteamsSortByOptions' "CreateDate"

pattern LName :: ListWorkteamsSortByOptions
pattern LName = ListWorkteamsSortByOptions' "Name"

{-# COMPLETE
  LCreateDate,
  LName,
  ListWorkteamsSortByOptions'
  #-}

instance FromText ListWorkteamsSortByOptions where
  parser = (ListWorkteamsSortByOptions' . mk) <$> takeText

instance ToText ListWorkteamsSortByOptions where
  toText (ListWorkteamsSortByOptions' ci) = original ci

instance Hashable ListWorkteamsSortByOptions

instance NFData ListWorkteamsSortByOptions

instance ToByteString ListWorkteamsSortByOptions

instance ToQuery ListWorkteamsSortByOptions

instance ToHeader ListWorkteamsSortByOptions

instance ToJSON ListWorkteamsSortByOptions where
  toJSON = toJSONText
