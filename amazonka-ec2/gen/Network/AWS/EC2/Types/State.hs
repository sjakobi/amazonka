{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.State
  ( State
      ( ..,
        StaAvailable,
        StaDeleted,
        StaDeleting,
        StaExpired,
        StaFailed,
        StaPending,
        StaPendingAcceptance,
        StaRejected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data State = State' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern StaAvailable :: State
pattern StaAvailable = State' "Available"

pattern StaDeleted :: State
pattern StaDeleted = State' "Deleted"

pattern StaDeleting :: State
pattern StaDeleting = State' "Deleting"

pattern StaExpired :: State
pattern StaExpired = State' "Expired"

pattern StaFailed :: State
pattern StaFailed = State' "Failed"

pattern StaPending :: State
pattern StaPending = State' "Pending"

pattern StaPendingAcceptance :: State
pattern StaPendingAcceptance = State' "PendingAcceptance"

pattern StaRejected :: State
pattern StaRejected = State' "Rejected"

{-# COMPLETE
  StaAvailable,
  StaDeleted,
  StaDeleting,
  StaExpired,
  StaFailed,
  StaPending,
  StaPendingAcceptance,
  StaRejected,
  State'
  #-}

instance FromText State where
  parser = (State' . mk) <$> takeText

instance ToText State where
  toText (State' ci) = original ci

instance Hashable State

instance NFData State

instance ToByteString State

instance ToQuery State

instance ToHeader State

instance FromXML State where
  parseXML = parseXMLText "State"
