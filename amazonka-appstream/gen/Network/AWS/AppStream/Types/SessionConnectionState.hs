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
-- Module      : Network.AWS.AppStream.Types.SessionConnectionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.SessionConnectionState
  ( SessionConnectionState
      ( ..,
        SessionConnectionStateCONNECTED,
        SessionConnectionStateNOTCONNECTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SessionConnectionState = SessionConnectionState'
  { fromSessionConnectionState ::
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

pattern SessionConnectionStateCONNECTED :: SessionConnectionState
pattern SessionConnectionStateCONNECTED = SessionConnectionState' "CONNECTED"

pattern SessionConnectionStateNOTCONNECTED :: SessionConnectionState
pattern SessionConnectionStateNOTCONNECTED = SessionConnectionState' "NOT_CONNECTED"

{-# COMPLETE
  SessionConnectionStateCONNECTED,
  SessionConnectionStateNOTCONNECTED,
  SessionConnectionState'
  #-}

instance Prelude.FromText SessionConnectionState where
  parser = SessionConnectionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText SessionConnectionState where
  toText (SessionConnectionState' x) = x

instance Prelude.Hashable SessionConnectionState

instance Prelude.NFData SessionConnectionState

instance Prelude.ToByteString SessionConnectionState

instance Prelude.ToQuery SessionConnectionState

instance Prelude.ToHeader SessionConnectionState

instance Prelude.FromJSON SessionConnectionState where
  parseJSON = Prelude.parseJSONText "SessionConnectionState"
