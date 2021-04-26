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
-- Module      : Network.AWS.MediaConvert.Types.HlsOfflineEncrypted
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsOfflineEncrypted
  ( HlsOfflineEncrypted
      ( ..,
        HlsOfflineEncryptedDISABLED,
        HlsOfflineEncryptedENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable this setting to insert the EXT-X-SESSION-KEY element into the
-- master playlist. This allows for offline Apple HLS FairPlay content
-- protection.
newtype HlsOfflineEncrypted = HlsOfflineEncrypted'
  { fromHlsOfflineEncrypted ::
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

pattern HlsOfflineEncryptedDISABLED :: HlsOfflineEncrypted
pattern HlsOfflineEncryptedDISABLED = HlsOfflineEncrypted' "DISABLED"

pattern HlsOfflineEncryptedENABLED :: HlsOfflineEncrypted
pattern HlsOfflineEncryptedENABLED = HlsOfflineEncrypted' "ENABLED"

{-# COMPLETE
  HlsOfflineEncryptedDISABLED,
  HlsOfflineEncryptedENABLED,
  HlsOfflineEncrypted'
  #-}

instance Prelude.FromText HlsOfflineEncrypted where
  parser = HlsOfflineEncrypted' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsOfflineEncrypted where
  toText (HlsOfflineEncrypted' x) = x

instance Prelude.Hashable HlsOfflineEncrypted

instance Prelude.NFData HlsOfflineEncrypted

instance Prelude.ToByteString HlsOfflineEncrypted

instance Prelude.ToQuery HlsOfflineEncrypted

instance Prelude.ToHeader HlsOfflineEncrypted

instance Prelude.ToJSON HlsOfflineEncrypted where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsOfflineEncrypted where
  parseJSON = Prelude.parseJSONText "HlsOfflineEncrypted"
