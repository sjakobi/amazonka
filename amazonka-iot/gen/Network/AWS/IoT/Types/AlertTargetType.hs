{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AlertTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AlertTargetType
  ( AlertTargetType
      ( ..,
        SNS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of alert target: one of "SNS".
data AlertTargetType = AlertTargetType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SNS :: AlertTargetType
pattern SNS = AlertTargetType' "SNS"

{-# COMPLETE
  SNS,
  AlertTargetType'
  #-}

instance FromText AlertTargetType where
  parser = (AlertTargetType' . mk) <$> takeText

instance ToText AlertTargetType where
  toText (AlertTargetType' ci) = original ci

instance Hashable AlertTargetType

instance NFData AlertTargetType

instance ToByteString AlertTargetType

instance ToQuery AlertTargetType

instance ToHeader AlertTargetType

instance ToJSON AlertTargetType where
  toJSON = toJSONText

instance FromJSON AlertTargetType where
  parseJSON = parseJSONText "AlertTargetType"
