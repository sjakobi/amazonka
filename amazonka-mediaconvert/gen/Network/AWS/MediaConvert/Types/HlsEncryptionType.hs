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
-- Module      : Network.AWS.MediaConvert.Types.HlsEncryptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsEncryptionType
  ( HlsEncryptionType
      ( ..,
        HlsEncryptionTypeAES128,
        HlsEncryptionTypeSAMPLEAES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Encrypts the segments with the given encryption scheme. Leave blank to
-- disable. Selecting \'Disabled\' in the web interface also disables
-- encryption.
newtype HlsEncryptionType = HlsEncryptionType'
  { fromHlsEncryptionType ::
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

pattern HlsEncryptionTypeAES128 :: HlsEncryptionType
pattern HlsEncryptionTypeAES128 = HlsEncryptionType' "AES128"

pattern HlsEncryptionTypeSAMPLEAES :: HlsEncryptionType
pattern HlsEncryptionTypeSAMPLEAES = HlsEncryptionType' "SAMPLE_AES"

{-# COMPLETE
  HlsEncryptionTypeAES128,
  HlsEncryptionTypeSAMPLEAES,
  HlsEncryptionType'
  #-}

instance Prelude.FromText HlsEncryptionType where
  parser = HlsEncryptionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsEncryptionType where
  toText (HlsEncryptionType' x) = x

instance Prelude.Hashable HlsEncryptionType

instance Prelude.NFData HlsEncryptionType

instance Prelude.ToByteString HlsEncryptionType

instance Prelude.ToQuery HlsEncryptionType

instance Prelude.ToHeader HlsEncryptionType

instance Prelude.ToJSON HlsEncryptionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsEncryptionType where
  parseJSON = Prelude.parseJSONText "HlsEncryptionType"
