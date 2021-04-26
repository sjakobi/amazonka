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
-- Module      : Network.AWS.KMS.Types.ConnectionStateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ConnectionStateType
  ( ConnectionStateType
      ( ..,
        ConnectionStateTypeCONNECTED,
        ConnectionStateTypeCONNECTING,
        ConnectionStateTypeDISCONNECTED,
        ConnectionStateTypeDISCONNECTING,
        ConnectionStateTypeFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionStateType = ConnectionStateType'
  { fromConnectionStateType ::
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

pattern ConnectionStateTypeCONNECTED :: ConnectionStateType
pattern ConnectionStateTypeCONNECTED = ConnectionStateType' "CONNECTED"

pattern ConnectionStateTypeCONNECTING :: ConnectionStateType
pattern ConnectionStateTypeCONNECTING = ConnectionStateType' "CONNECTING"

pattern ConnectionStateTypeDISCONNECTED :: ConnectionStateType
pattern ConnectionStateTypeDISCONNECTED = ConnectionStateType' "DISCONNECTED"

pattern ConnectionStateTypeDISCONNECTING :: ConnectionStateType
pattern ConnectionStateTypeDISCONNECTING = ConnectionStateType' "DISCONNECTING"

pattern ConnectionStateTypeFAILED :: ConnectionStateType
pattern ConnectionStateTypeFAILED = ConnectionStateType' "FAILED"

{-# COMPLETE
  ConnectionStateTypeCONNECTED,
  ConnectionStateTypeCONNECTING,
  ConnectionStateTypeDISCONNECTED,
  ConnectionStateTypeDISCONNECTING,
  ConnectionStateTypeFAILED,
  ConnectionStateType'
  #-}

instance Prelude.FromText ConnectionStateType where
  parser = ConnectionStateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionStateType where
  toText (ConnectionStateType' x) = x

instance Prelude.Hashable ConnectionStateType

instance Prelude.NFData ConnectionStateType

instance Prelude.ToByteString ConnectionStateType

instance Prelude.ToQuery ConnectionStateType

instance Prelude.ToHeader ConnectionStateType

instance Prelude.FromJSON ConnectionStateType where
  parseJSON = Prelude.parseJSONText "ConnectionStateType"
