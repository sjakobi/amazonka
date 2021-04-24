{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.MonitoringState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MonitoringState
  ( MonitoringState
      ( ..,
        MSDisabled,
        MSDisabling,
        MSEnabled,
        MSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data MonitoringState = MonitoringState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MSDisabled :: MonitoringState
pattern MSDisabled = MonitoringState' "disabled"

pattern MSDisabling :: MonitoringState
pattern MSDisabling = MonitoringState' "disabling"

pattern MSEnabled :: MonitoringState
pattern MSEnabled = MonitoringState' "enabled"

pattern MSPending :: MonitoringState
pattern MSPending = MonitoringState' "pending"

{-# COMPLETE
  MSDisabled,
  MSDisabling,
  MSEnabled,
  MSPending,
  MonitoringState'
  #-}

instance FromText MonitoringState where
  parser = (MonitoringState' . mk) <$> takeText

instance ToText MonitoringState where
  toText (MonitoringState' ci) = original ci

instance Hashable MonitoringState

instance NFData MonitoringState

instance ToByteString MonitoringState

instance ToQuery MonitoringState

instance ToHeader MonitoringState

instance FromXML MonitoringState where
  parseXML = parseXMLText "MonitoringState"
