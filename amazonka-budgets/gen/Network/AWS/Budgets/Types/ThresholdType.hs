{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ThresholdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ThresholdType
  ( ThresholdType
      ( ..,
        AbsoluteValue,
        Percentage
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of threshold for a notification.
data ThresholdType = ThresholdType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AbsoluteValue :: ThresholdType
pattern AbsoluteValue = ThresholdType' "ABSOLUTE_VALUE"

pattern Percentage :: ThresholdType
pattern Percentage = ThresholdType' "PERCENTAGE"

{-# COMPLETE
  AbsoluteValue,
  Percentage,
  ThresholdType'
  #-}

instance FromText ThresholdType where
  parser = (ThresholdType' . mk) <$> takeText

instance ToText ThresholdType where
  toText (ThresholdType' ci) = original ci

instance Hashable ThresholdType

instance NFData ThresholdType

instance ToByteString ThresholdType

instance ToQuery ThresholdType

instance ToHeader ThresholdType

instance ToJSON ThresholdType where
  toJSON = toJSONText

instance FromJSON ThresholdType where
  parseJSON = parseJSONText "ThresholdType"
