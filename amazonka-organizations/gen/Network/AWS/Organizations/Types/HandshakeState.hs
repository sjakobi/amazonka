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
-- Module      : Network.AWS.Organizations.Types.HandshakeState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.HandshakeState
  ( HandshakeState
      ( ..,
        HandshakeStateACCEPTED,
        HandshakeStateCANCELED,
        HandshakeStateDECLINED,
        HandshakeStateEXPIRED,
        HandshakeStateOPEN,
        HandshakeStateREQUESTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HandshakeState = HandshakeState'
  { fromHandshakeState ::
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

pattern HandshakeStateACCEPTED :: HandshakeState
pattern HandshakeStateACCEPTED = HandshakeState' "ACCEPTED"

pattern HandshakeStateCANCELED :: HandshakeState
pattern HandshakeStateCANCELED = HandshakeState' "CANCELED"

pattern HandshakeStateDECLINED :: HandshakeState
pattern HandshakeStateDECLINED = HandshakeState' "DECLINED"

pattern HandshakeStateEXPIRED :: HandshakeState
pattern HandshakeStateEXPIRED = HandshakeState' "EXPIRED"

pattern HandshakeStateOPEN :: HandshakeState
pattern HandshakeStateOPEN = HandshakeState' "OPEN"

pattern HandshakeStateREQUESTED :: HandshakeState
pattern HandshakeStateREQUESTED = HandshakeState' "REQUESTED"

{-# COMPLETE
  HandshakeStateACCEPTED,
  HandshakeStateCANCELED,
  HandshakeStateDECLINED,
  HandshakeStateEXPIRED,
  HandshakeStateOPEN,
  HandshakeStateREQUESTED,
  HandshakeState'
  #-}

instance Prelude.FromText HandshakeState where
  parser = HandshakeState' Prelude.<$> Prelude.takeText

instance Prelude.ToText HandshakeState where
  toText (HandshakeState' x) = x

instance Prelude.Hashable HandshakeState

instance Prelude.NFData HandshakeState

instance Prelude.ToByteString HandshakeState

instance Prelude.ToQuery HandshakeState

instance Prelude.ToHeader HandshakeState

instance Prelude.FromJSON HandshakeState where
  parseJSON = Prelude.parseJSONText "HandshakeState"
