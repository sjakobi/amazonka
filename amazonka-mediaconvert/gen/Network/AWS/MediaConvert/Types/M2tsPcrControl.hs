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
-- Module      : Network.AWS.MediaConvert.Types.M2tsPcrControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsPcrControl
  ( M2tsPcrControl
      ( ..,
        M2tsPcrControlCONFIGUREDPCRPERIOD,
        M2tsPcrControlPCREVERYPESPACKET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is
-- inserted for every Packetized Elementary Stream (PES) header. This is
-- effective only when the PCR PID is the same as the video or audio
-- elementary stream.
newtype M2tsPcrControl = M2tsPcrControl'
  { fromM2tsPcrControl ::
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

pattern M2tsPcrControlCONFIGUREDPCRPERIOD :: M2tsPcrControl
pattern M2tsPcrControlCONFIGUREDPCRPERIOD = M2tsPcrControl' "CONFIGURED_PCR_PERIOD"

pattern M2tsPcrControlPCREVERYPESPACKET :: M2tsPcrControl
pattern M2tsPcrControlPCREVERYPESPACKET = M2tsPcrControl' "PCR_EVERY_PES_PACKET"

{-# COMPLETE
  M2tsPcrControlCONFIGUREDPCRPERIOD,
  M2tsPcrControlPCREVERYPESPACKET,
  M2tsPcrControl'
  #-}

instance Prelude.FromText M2tsPcrControl where
  parser = M2tsPcrControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsPcrControl where
  toText (M2tsPcrControl' x) = x

instance Prelude.Hashable M2tsPcrControl

instance Prelude.NFData M2tsPcrControl

instance Prelude.ToByteString M2tsPcrControl

instance Prelude.ToQuery M2tsPcrControl

instance Prelude.ToHeader M2tsPcrControl

instance Prelude.ToJSON M2tsPcrControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsPcrControl where
  parseJSON = Prelude.parseJSONText "M2tsPcrControl"
