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
-- Module      : Network.AWS.EC2.Types.SpotInstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotInstanceState
  ( SpotInstanceState
      ( ..,
        SpotInstanceStateActive,
        SpotInstanceStateCancelled,
        SpotInstanceStateClosed,
        SpotInstanceStateFailed,
        SpotInstanceStateOpen
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SpotInstanceState = SpotInstanceState'
  { fromSpotInstanceState ::
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

pattern SpotInstanceStateActive :: SpotInstanceState
pattern SpotInstanceStateActive = SpotInstanceState' "active"

pattern SpotInstanceStateCancelled :: SpotInstanceState
pattern SpotInstanceStateCancelled = SpotInstanceState' "cancelled"

pattern SpotInstanceStateClosed :: SpotInstanceState
pattern SpotInstanceStateClosed = SpotInstanceState' "closed"

pattern SpotInstanceStateFailed :: SpotInstanceState
pattern SpotInstanceStateFailed = SpotInstanceState' "failed"

pattern SpotInstanceStateOpen :: SpotInstanceState
pattern SpotInstanceStateOpen = SpotInstanceState' "open"

{-# COMPLETE
  SpotInstanceStateActive,
  SpotInstanceStateCancelled,
  SpotInstanceStateClosed,
  SpotInstanceStateFailed,
  SpotInstanceStateOpen,
  SpotInstanceState'
  #-}

instance Prelude.FromText SpotInstanceState where
  parser = SpotInstanceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText SpotInstanceState where
  toText (SpotInstanceState' x) = x

instance Prelude.Hashable SpotInstanceState

instance Prelude.NFData SpotInstanceState

instance Prelude.ToByteString SpotInstanceState

instance Prelude.ToQuery SpotInstanceState

instance Prelude.ToHeader SpotInstanceState

instance Prelude.FromXML SpotInstanceState where
  parseXML = Prelude.parseXMLText "SpotInstanceState"
