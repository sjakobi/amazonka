{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RecorderStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RecorderStatus
  ( RecorderStatus
      ( ..,
        Failure,
        Pending,
        Success
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecorderStatus = RecorderStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failure :: RecorderStatus
pattern Failure = RecorderStatus' "Failure"

pattern Pending :: RecorderStatus
pattern Pending = RecorderStatus' "Pending"

pattern Success :: RecorderStatus
pattern Success = RecorderStatus' "Success"

{-# COMPLETE
  Failure,
  Pending,
  Success,
  RecorderStatus'
  #-}

instance FromText RecorderStatus where
  parser = (RecorderStatus' . mk) <$> takeText

instance ToText RecorderStatus where
  toText (RecorderStatus' ci) = original ci

instance Hashable RecorderStatus

instance NFData RecorderStatus

instance ToByteString RecorderStatus

instance ToQuery RecorderStatus

instance ToHeader RecorderStatus

instance FromJSON RecorderStatus where
  parseJSON = parseJSONText "RecorderStatus"
