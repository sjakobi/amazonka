{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.HandshakeState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.HandshakeState
  ( HandshakeState
      ( ..,
        Accepted,
        Canceled,
        Declined,
        Expired,
        Open,
        Requested
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HandshakeState = HandshakeState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Accepted :: HandshakeState
pattern Accepted = HandshakeState' "ACCEPTED"

pattern Canceled :: HandshakeState
pattern Canceled = HandshakeState' "CANCELED"

pattern Declined :: HandshakeState
pattern Declined = HandshakeState' "DECLINED"

pattern Expired :: HandshakeState
pattern Expired = HandshakeState' "EXPIRED"

pattern Open :: HandshakeState
pattern Open = HandshakeState' "OPEN"

pattern Requested :: HandshakeState
pattern Requested = HandshakeState' "REQUESTED"

{-# COMPLETE
  Accepted,
  Canceled,
  Declined,
  Expired,
  Open,
  Requested,
  HandshakeState'
  #-}

instance FromText HandshakeState where
  parser = (HandshakeState' . mk) <$> takeText

instance ToText HandshakeState where
  toText (HandshakeState' ci) = original ci

instance Hashable HandshakeState

instance NFData HandshakeState

instance ToByteString HandshakeState

instance ToQuery HandshakeState

instance ToHeader HandshakeState

instance FromJSON HandshakeState where
  parseJSON = parseJSONText "HandshakeState"
