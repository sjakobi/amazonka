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
-- Module      : Network.AWS.EC2.Types.DnsNameState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DnsNameState
  ( DnsNameState
      ( ..,
        DnsNameStateFailed,
        DnsNameStatePendingVerification,
        DnsNameStateVerified
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DnsNameState = DnsNameState'
  { fromDnsNameState ::
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

pattern DnsNameStateFailed :: DnsNameState
pattern DnsNameStateFailed = DnsNameState' "failed"

pattern DnsNameStatePendingVerification :: DnsNameState
pattern DnsNameStatePendingVerification = DnsNameState' "pendingVerification"

pattern DnsNameStateVerified :: DnsNameState
pattern DnsNameStateVerified = DnsNameState' "verified"

{-# COMPLETE
  DnsNameStateFailed,
  DnsNameStatePendingVerification,
  DnsNameStateVerified,
  DnsNameState'
  #-}

instance Prelude.FromText DnsNameState where
  parser = DnsNameState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DnsNameState where
  toText (DnsNameState' x) = x

instance Prelude.Hashable DnsNameState

instance Prelude.NFData DnsNameState

instance Prelude.ToByteString DnsNameState

instance Prelude.ToQuery DnsNameState

instance Prelude.ToHeader DnsNameState

instance Prelude.FromXML DnsNameState where
  parseXML = Prelude.parseXMLText "DnsNameState"
