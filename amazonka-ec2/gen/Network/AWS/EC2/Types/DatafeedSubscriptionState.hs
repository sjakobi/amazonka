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
-- Module      : Network.AWS.EC2.Types.DatafeedSubscriptionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DatafeedSubscriptionState
  ( DatafeedSubscriptionState
      ( ..,
        DatafeedSubscriptionStateActive,
        DatafeedSubscriptionStateInactive
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DatafeedSubscriptionState = DatafeedSubscriptionState'
  { fromDatafeedSubscriptionState ::
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

pattern DatafeedSubscriptionStateActive :: DatafeedSubscriptionState
pattern DatafeedSubscriptionStateActive = DatafeedSubscriptionState' "Active"

pattern DatafeedSubscriptionStateInactive :: DatafeedSubscriptionState
pattern DatafeedSubscriptionStateInactive = DatafeedSubscriptionState' "Inactive"

{-# COMPLETE
  DatafeedSubscriptionStateActive,
  DatafeedSubscriptionStateInactive,
  DatafeedSubscriptionState'
  #-}

instance Prelude.FromText DatafeedSubscriptionState where
  parser = DatafeedSubscriptionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DatafeedSubscriptionState where
  toText (DatafeedSubscriptionState' x) = x

instance Prelude.Hashable DatafeedSubscriptionState

instance Prelude.NFData DatafeedSubscriptionState

instance Prelude.ToByteString DatafeedSubscriptionState

instance Prelude.ToQuery DatafeedSubscriptionState

instance Prelude.ToHeader DatafeedSubscriptionState

instance Prelude.FromXML DatafeedSubscriptionState where
  parseXML = Prelude.parseXMLText "DatafeedSubscriptionState"
