{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CancelSpotInstanceRequestState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CancelSpotInstanceRequestState
  ( CancelSpotInstanceRequestState
      ( ..,
        CSIRSActive,
        CSIRSCancelled,
        CSIRSClosed,
        CSIRSCompleted,
        CSIRSOpen
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CancelSpotInstanceRequestState
  = CancelSpotInstanceRequestState'
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

pattern CSIRSActive :: CancelSpotInstanceRequestState
pattern CSIRSActive = CancelSpotInstanceRequestState' "active"

pattern CSIRSCancelled :: CancelSpotInstanceRequestState
pattern CSIRSCancelled = CancelSpotInstanceRequestState' "cancelled"

pattern CSIRSClosed :: CancelSpotInstanceRequestState
pattern CSIRSClosed = CancelSpotInstanceRequestState' "closed"

pattern CSIRSCompleted :: CancelSpotInstanceRequestState
pattern CSIRSCompleted = CancelSpotInstanceRequestState' "completed"

pattern CSIRSOpen :: CancelSpotInstanceRequestState
pattern CSIRSOpen = CancelSpotInstanceRequestState' "open"

{-# COMPLETE
  CSIRSActive,
  CSIRSCancelled,
  CSIRSClosed,
  CSIRSCompleted,
  CSIRSOpen,
  CancelSpotInstanceRequestState'
  #-}

instance FromText CancelSpotInstanceRequestState where
  parser = (CancelSpotInstanceRequestState' . mk) <$> takeText

instance ToText CancelSpotInstanceRequestState where
  toText (CancelSpotInstanceRequestState' ci) = original ci

instance Hashable CancelSpotInstanceRequestState

instance NFData CancelSpotInstanceRequestState

instance ToByteString CancelSpotInstanceRequestState

instance ToQuery CancelSpotInstanceRequestState

instance ToHeader CancelSpotInstanceRequestState

instance FromXML CancelSpotInstanceRequestState where
  parseXML = parseXMLText "CancelSpotInstanceRequestState"
