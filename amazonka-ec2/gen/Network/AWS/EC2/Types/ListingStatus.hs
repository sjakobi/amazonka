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
-- Module      : Network.AWS.EC2.Types.ListingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ListingStatus
  ( ListingStatus
      ( ..,
        ListingStatusActive,
        ListingStatusCancelled,
        ListingStatusClosed,
        ListingStatusPending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ListingStatus = ListingStatus'
  { fromListingStatus ::
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

pattern ListingStatusActive :: ListingStatus
pattern ListingStatusActive = ListingStatus' "active"

pattern ListingStatusCancelled :: ListingStatus
pattern ListingStatusCancelled = ListingStatus' "cancelled"

pattern ListingStatusClosed :: ListingStatus
pattern ListingStatusClosed = ListingStatus' "closed"

pattern ListingStatusPending :: ListingStatus
pattern ListingStatusPending = ListingStatus' "pending"

{-# COMPLETE
  ListingStatusActive,
  ListingStatusCancelled,
  ListingStatusClosed,
  ListingStatusPending,
  ListingStatus'
  #-}

instance Prelude.FromText ListingStatus where
  parser = ListingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListingStatus where
  toText (ListingStatus' x) = x

instance Prelude.Hashable ListingStatus

instance Prelude.NFData ListingStatus

instance Prelude.ToByteString ListingStatus

instance Prelude.ToQuery ListingStatus

instance Prelude.ToHeader ListingStatus

instance Prelude.FromXML ListingStatus where
  parseXML = Prelude.parseXMLText "ListingStatus"
