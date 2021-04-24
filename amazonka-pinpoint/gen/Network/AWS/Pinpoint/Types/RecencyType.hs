{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.RecencyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.RecencyType
  ( RecencyType
      ( ..,
        Active,
        Inactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecencyType = RecencyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: RecencyType
pattern Active = RecencyType' "ACTIVE"

pattern Inactive :: RecencyType
pattern Inactive = RecencyType' "INACTIVE"

{-# COMPLETE
  Active,
  Inactive,
  RecencyType'
  #-}

instance FromText RecencyType where
  parser = (RecencyType' . mk) <$> takeText

instance ToText RecencyType where
  toText (RecencyType' ci) = original ci

instance Hashable RecencyType

instance NFData RecencyType

instance ToByteString RecencyType

instance ToQuery RecencyType

instance ToHeader RecencyType

instance ToJSON RecencyType where
  toJSON = toJSONText

instance FromJSON RecencyType where
  parseJSON = parseJSONText "RecencyType"
