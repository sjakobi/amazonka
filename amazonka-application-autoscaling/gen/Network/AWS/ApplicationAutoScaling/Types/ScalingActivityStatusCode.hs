{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
  ( ScalingActivityStatusCode
      ( ..,
        Failed,
        InProgress,
        Overridden,
        Pending,
        Successful,
        Unfulfilled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalingActivityStatusCode
  = ScalingActivityStatusCode'
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

pattern Failed :: ScalingActivityStatusCode
pattern Failed = ScalingActivityStatusCode' "Failed"

pattern InProgress :: ScalingActivityStatusCode
pattern InProgress = ScalingActivityStatusCode' "InProgress"

pattern Overridden :: ScalingActivityStatusCode
pattern Overridden = ScalingActivityStatusCode' "Overridden"

pattern Pending :: ScalingActivityStatusCode
pattern Pending = ScalingActivityStatusCode' "Pending"

pattern Successful :: ScalingActivityStatusCode
pattern Successful = ScalingActivityStatusCode' "Successful"

pattern Unfulfilled :: ScalingActivityStatusCode
pattern Unfulfilled = ScalingActivityStatusCode' "Unfulfilled"

{-# COMPLETE
  Failed,
  InProgress,
  Overridden,
  Pending,
  Successful,
  Unfulfilled,
  ScalingActivityStatusCode'
  #-}

instance FromText ScalingActivityStatusCode where
  parser = (ScalingActivityStatusCode' . mk) <$> takeText

instance ToText ScalingActivityStatusCode where
  toText (ScalingActivityStatusCode' ci) = original ci

instance Hashable ScalingActivityStatusCode

instance NFData ScalingActivityStatusCode

instance ToByteString ScalingActivityStatusCode

instance ToQuery ScalingActivityStatusCode

instance ToHeader ScalingActivityStatusCode

instance FromJSON ScalingActivityStatusCode where
  parseJSON = parseJSONText "ScalingActivityStatusCode"
