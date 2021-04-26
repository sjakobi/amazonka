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
-- Module      : Network.AWS.EC2.Types.ListingState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ListingState
  ( ListingState
      ( ..,
        ListingStateAvailable,
        ListingStateCancelled,
        ListingStatePending,
        ListingStateSold
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ListingState = ListingState'
  { fromListingState ::
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

pattern ListingStateAvailable :: ListingState
pattern ListingStateAvailable = ListingState' "available"

pattern ListingStateCancelled :: ListingState
pattern ListingStateCancelled = ListingState' "cancelled"

pattern ListingStatePending :: ListingState
pattern ListingStatePending = ListingState' "pending"

pattern ListingStateSold :: ListingState
pattern ListingStateSold = ListingState' "sold"

{-# COMPLETE
  ListingStateAvailable,
  ListingStateCancelled,
  ListingStatePending,
  ListingStateSold,
  ListingState'
  #-}

instance Prelude.FromText ListingState where
  parser = ListingState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListingState where
  toText (ListingState' x) = x

instance Prelude.Hashable ListingState

instance Prelude.NFData ListingState

instance Prelude.ToByteString ListingState

instance Prelude.ToQuery ListingState

instance Prelude.ToHeader ListingState

instance Prelude.FromXML ListingState where
  parseXML = Prelude.parseXMLText "ListingState"
