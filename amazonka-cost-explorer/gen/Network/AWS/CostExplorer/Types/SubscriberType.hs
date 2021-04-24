{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.SubscriberType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SubscriberType
  ( SubscriberType
      ( ..,
        Email,
        SNS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SubscriberType = SubscriberType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Email :: SubscriberType
pattern Email = SubscriberType' "EMAIL"

pattern SNS :: SubscriberType
pattern SNS = SubscriberType' "SNS"

{-# COMPLETE
  Email,
  SNS,
  SubscriberType'
  #-}

instance FromText SubscriberType where
  parser = (SubscriberType' . mk) <$> takeText

instance ToText SubscriberType where
  toText (SubscriberType' ci) = original ci

instance Hashable SubscriberType

instance NFData SubscriberType

instance ToByteString SubscriberType

instance ToQuery SubscriberType

instance ToHeader SubscriberType

instance ToJSON SubscriberType where
  toJSON = toJSONText

instance FromJSON SubscriberType where
  parseJSON = parseJSONText "SubscriberType"
