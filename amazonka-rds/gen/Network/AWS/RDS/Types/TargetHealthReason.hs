{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.TargetHealthReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.TargetHealthReason
  ( TargetHealthReason
      ( ..,
        AuthFailure,
        ConnectionFailed,
        PendingProxyCapacity,
        Unreachable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetHealthReason
  = TargetHealthReason'
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

pattern AuthFailure :: TargetHealthReason
pattern AuthFailure = TargetHealthReason' "AUTH_FAILURE"

pattern ConnectionFailed :: TargetHealthReason
pattern ConnectionFailed = TargetHealthReason' "CONNECTION_FAILED"

pattern PendingProxyCapacity :: TargetHealthReason
pattern PendingProxyCapacity = TargetHealthReason' "PENDING_PROXY_CAPACITY"

pattern Unreachable :: TargetHealthReason
pattern Unreachable = TargetHealthReason' "UNREACHABLE"

{-# COMPLETE
  AuthFailure,
  ConnectionFailed,
  PendingProxyCapacity,
  Unreachable,
  TargetHealthReason'
  #-}

instance FromText TargetHealthReason where
  parser = (TargetHealthReason' . mk) <$> takeText

instance ToText TargetHealthReason where
  toText (TargetHealthReason' ci) = original ci

instance Hashable TargetHealthReason

instance NFData TargetHealthReason

instance ToByteString TargetHealthReason

instance ToQuery TargetHealthReason

instance ToHeader TargetHealthReason

instance FromXML TargetHealthReason where
  parseXML = parseXMLText "TargetHealthReason"
