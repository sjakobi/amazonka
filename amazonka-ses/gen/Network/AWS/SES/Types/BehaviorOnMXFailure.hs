{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.BehaviorOnMXFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.BehaviorOnMXFailure
  ( BehaviorOnMXFailure
      ( ..,
        RejectMessage,
        UseDefaultValue
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BehaviorOnMXFailure
  = BehaviorOnMXFailure'
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

pattern RejectMessage :: BehaviorOnMXFailure
pattern RejectMessage = BehaviorOnMXFailure' "RejectMessage"

pattern UseDefaultValue :: BehaviorOnMXFailure
pattern UseDefaultValue = BehaviorOnMXFailure' "UseDefaultValue"

{-# COMPLETE
  RejectMessage,
  UseDefaultValue,
  BehaviorOnMXFailure'
  #-}

instance FromText BehaviorOnMXFailure where
  parser = (BehaviorOnMXFailure' . mk) <$> takeText

instance ToText BehaviorOnMXFailure where
  toText (BehaviorOnMXFailure' ci) = original ci

instance Hashable BehaviorOnMXFailure

instance NFData BehaviorOnMXFailure

instance ToByteString BehaviorOnMXFailure

instance ToQuery BehaviorOnMXFailure

instance ToHeader BehaviorOnMXFailure

instance FromXML BehaviorOnMXFailure where
  parseXML = parseXMLText "BehaviorOnMXFailure"
