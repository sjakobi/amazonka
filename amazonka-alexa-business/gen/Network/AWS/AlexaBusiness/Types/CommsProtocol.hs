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
-- Module      : Network.AWS.AlexaBusiness.Types.CommsProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.CommsProtocol
  ( CommsProtocol
      ( ..,
        CommsProtocolH323,
        CommsProtocolSIP,
        CommsProtocolSIPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommsProtocol = CommsProtocol'
  { fromCommsProtocol ::
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

pattern CommsProtocolH323 :: CommsProtocol
pattern CommsProtocolH323 = CommsProtocol' "H323"

pattern CommsProtocolSIP :: CommsProtocol
pattern CommsProtocolSIP = CommsProtocol' "SIP"

pattern CommsProtocolSIPS :: CommsProtocol
pattern CommsProtocolSIPS = CommsProtocol' "SIPS"

{-# COMPLETE
  CommsProtocolH323,
  CommsProtocolSIP,
  CommsProtocolSIPS,
  CommsProtocol'
  #-}

instance Prelude.FromText CommsProtocol where
  parser = CommsProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText CommsProtocol where
  toText (CommsProtocol' x) = x

instance Prelude.Hashable CommsProtocol

instance Prelude.NFData CommsProtocol

instance Prelude.ToByteString CommsProtocol

instance Prelude.ToQuery CommsProtocol

instance Prelude.ToHeader CommsProtocol

instance Prelude.ToJSON CommsProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CommsProtocol where
  parseJSON = Prelude.parseJSONText "CommsProtocol"
