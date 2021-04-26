{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        CancelSpotInstanceRequestStateActive,
        CancelSpotInstanceRequestStateCancelled,
        CancelSpotInstanceRequestStateClosed,
        CancelSpotInstanceRequestStateCompleted,
        CancelSpotInstanceRequestStateOpen
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CancelSpotInstanceRequestState = CancelSpotInstanceRequestState'
  { fromCancelSpotInstanceRequestState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CancelSpotInstanceRequestStateActive :: CancelSpotInstanceRequestState
pattern CancelSpotInstanceRequestStateActive = CancelSpotInstanceRequestState' "active"

pattern CancelSpotInstanceRequestStateCancelled :: CancelSpotInstanceRequestState
pattern CancelSpotInstanceRequestStateCancelled = CancelSpotInstanceRequestState' "cancelled"

pattern CancelSpotInstanceRequestStateClosed :: CancelSpotInstanceRequestState
pattern CancelSpotInstanceRequestStateClosed = CancelSpotInstanceRequestState' "closed"

pattern CancelSpotInstanceRequestStateCompleted :: CancelSpotInstanceRequestState
pattern CancelSpotInstanceRequestStateCompleted = CancelSpotInstanceRequestState' "completed"

pattern CancelSpotInstanceRequestStateOpen :: CancelSpotInstanceRequestState
pattern CancelSpotInstanceRequestStateOpen = CancelSpotInstanceRequestState' "open"

{-# COMPLETE
  CancelSpotInstanceRequestStateActive,
  CancelSpotInstanceRequestStateCancelled,
  CancelSpotInstanceRequestStateClosed,
  CancelSpotInstanceRequestStateCompleted,
  CancelSpotInstanceRequestStateOpen,
  CancelSpotInstanceRequestState'
  #-}

instance Prelude.FromText CancelSpotInstanceRequestState where
  parser = CancelSpotInstanceRequestState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CancelSpotInstanceRequestState where
  toText (CancelSpotInstanceRequestState' x) = x

instance Prelude.Hashable CancelSpotInstanceRequestState

instance Prelude.NFData CancelSpotInstanceRequestState

instance Prelude.ToByteString CancelSpotInstanceRequestState

instance Prelude.ToQuery CancelSpotInstanceRequestState

instance Prelude.ToHeader CancelSpotInstanceRequestState

instance Prelude.FromXML CancelSpotInstanceRequestState where
  parseXML = Prelude.parseXMLText "CancelSpotInstanceRequestState"
