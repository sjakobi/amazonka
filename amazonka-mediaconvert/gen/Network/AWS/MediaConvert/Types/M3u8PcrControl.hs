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
-- Module      : Network.AWS.MediaConvert.Types.M3u8PcrControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M3u8PcrControl
  ( M3u8PcrControl
      ( ..,
        M3u8PcrControlCONFIGUREDPCRPERIOD,
        M3u8PcrControlPCREVERYPESPACKET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is
-- inserted for every Packetized Elementary Stream (PES) header. This
-- parameter is effective only when the PCR PID is the same as the video or
-- audio elementary stream.
newtype M3u8PcrControl = M3u8PcrControl'
  { fromM3u8PcrControl ::
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

pattern M3u8PcrControlCONFIGUREDPCRPERIOD :: M3u8PcrControl
pattern M3u8PcrControlCONFIGUREDPCRPERIOD = M3u8PcrControl' "CONFIGURED_PCR_PERIOD"

pattern M3u8PcrControlPCREVERYPESPACKET :: M3u8PcrControl
pattern M3u8PcrControlPCREVERYPESPACKET = M3u8PcrControl' "PCR_EVERY_PES_PACKET"

{-# COMPLETE
  M3u8PcrControlCONFIGUREDPCRPERIOD,
  M3u8PcrControlPCREVERYPESPACKET,
  M3u8PcrControl'
  #-}

instance Prelude.FromText M3u8PcrControl where
  parser = M3u8PcrControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText M3u8PcrControl where
  toText (M3u8PcrControl' x) = x

instance Prelude.Hashable M3u8PcrControl

instance Prelude.NFData M3u8PcrControl

instance Prelude.ToByteString M3u8PcrControl

instance Prelude.ToQuery M3u8PcrControl

instance Prelude.ToHeader M3u8PcrControl

instance Prelude.ToJSON M3u8PcrControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M3u8PcrControl where
  parseJSON = Prelude.parseJSONText "M3u8PcrControl"
