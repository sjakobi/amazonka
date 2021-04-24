{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceMetadataOptionsState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceMetadataOptionsState
  ( InstanceMetadataOptionsState
      ( ..,
        IMOSApplied,
        IMOSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data InstanceMetadataOptionsState
  = InstanceMetadataOptionsState'
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

pattern IMOSApplied :: InstanceMetadataOptionsState
pattern IMOSApplied = InstanceMetadataOptionsState' "applied"

pattern IMOSPending :: InstanceMetadataOptionsState
pattern IMOSPending = InstanceMetadataOptionsState' "pending"

{-# COMPLETE
  IMOSApplied,
  IMOSPending,
  InstanceMetadataOptionsState'
  #-}

instance FromText InstanceMetadataOptionsState where
  parser = (InstanceMetadataOptionsState' . mk) <$> takeText

instance ToText InstanceMetadataOptionsState where
  toText (InstanceMetadataOptionsState' ci) = original ci

instance Hashable InstanceMetadataOptionsState

instance NFData InstanceMetadataOptionsState

instance ToByteString InstanceMetadataOptionsState

instance ToQuery InstanceMetadataOptionsState

instance ToHeader InstanceMetadataOptionsState

instance FromXML InstanceMetadataOptionsState where
  parseXML = parseXMLText "InstanceMetadataOptionsState"
