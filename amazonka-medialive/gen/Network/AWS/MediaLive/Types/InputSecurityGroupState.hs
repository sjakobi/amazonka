{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputSecurityGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSecurityGroupState
  ( InputSecurityGroupState
      ( ..,
        ISGSDeleted,
        ISGSIdle,
        ISGSInUse,
        ISGSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for InputSecurityGroupState
data InputSecurityGroupState
  = InputSecurityGroupState'
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

pattern ISGSDeleted :: InputSecurityGroupState
pattern ISGSDeleted = InputSecurityGroupState' "DELETED"

pattern ISGSIdle :: InputSecurityGroupState
pattern ISGSIdle = InputSecurityGroupState' "IDLE"

pattern ISGSInUse :: InputSecurityGroupState
pattern ISGSInUse = InputSecurityGroupState' "IN_USE"

pattern ISGSUpdating :: InputSecurityGroupState
pattern ISGSUpdating = InputSecurityGroupState' "UPDATING"

{-# COMPLETE
  ISGSDeleted,
  ISGSIdle,
  ISGSInUse,
  ISGSUpdating,
  InputSecurityGroupState'
  #-}

instance FromText InputSecurityGroupState where
  parser = (InputSecurityGroupState' . mk) <$> takeText

instance ToText InputSecurityGroupState where
  toText (InputSecurityGroupState' ci) = original ci

instance Hashable InputSecurityGroupState

instance NFData InputSecurityGroupState

instance ToByteString InputSecurityGroupState

instance ToQuery InputSecurityGroupState

instance ToHeader InputSecurityGroupState

instance FromJSON InputSecurityGroupState where
  parseJSON = parseJSONText "InputSecurityGroupState"
