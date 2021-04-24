{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.FilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.FilterType
  ( FilterType
      ( ..,
        Endpoint,
        System
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FilterType = FilterType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Endpoint :: FilterType
pattern Endpoint = FilterType' "ENDPOINT"

pattern System :: FilterType
pattern System = FilterType' "SYSTEM"

{-# COMPLETE
  Endpoint,
  System,
  FilterType'
  #-}

instance FromText FilterType where
  parser = (FilterType' . mk) <$> takeText

instance ToText FilterType where
  toText (FilterType' ci) = original ci

instance Hashable FilterType

instance NFData FilterType

instance ToByteString FilterType

instance ToQuery FilterType

instance ToHeader FilterType

instance ToJSON FilterType where
  toJSON = toJSONText

instance FromJSON FilterType where
  parseJSON = parseJSONText "FilterType"
