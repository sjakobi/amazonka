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
-- Module      : Network.AWS.Route53Domains.Types.ReachabilityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.ReachabilityStatus
  ( ReachabilityStatus
      ( ..,
        ReachabilityStatusDONE,
        ReachabilityStatusEXPIRED,
        ReachabilityStatusPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReachabilityStatus = ReachabilityStatus'
  { fromReachabilityStatus ::
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

pattern ReachabilityStatusDONE :: ReachabilityStatus
pattern ReachabilityStatusDONE = ReachabilityStatus' "DONE"

pattern ReachabilityStatusEXPIRED :: ReachabilityStatus
pattern ReachabilityStatusEXPIRED = ReachabilityStatus' "EXPIRED"

pattern ReachabilityStatusPENDING :: ReachabilityStatus
pattern ReachabilityStatusPENDING = ReachabilityStatus' "PENDING"

{-# COMPLETE
  ReachabilityStatusDONE,
  ReachabilityStatusEXPIRED,
  ReachabilityStatusPENDING,
  ReachabilityStatus'
  #-}

instance Prelude.FromText ReachabilityStatus where
  parser = ReachabilityStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReachabilityStatus where
  toText (ReachabilityStatus' x) = x

instance Prelude.Hashable ReachabilityStatus

instance Prelude.NFData ReachabilityStatus

instance Prelude.ToByteString ReachabilityStatus

instance Prelude.ToQuery ReachabilityStatus

instance Prelude.ToHeader ReachabilityStatus

instance Prelude.FromJSON ReachabilityStatus where
  parseJSON = Prelude.parseJSONText "ReachabilityStatus"
