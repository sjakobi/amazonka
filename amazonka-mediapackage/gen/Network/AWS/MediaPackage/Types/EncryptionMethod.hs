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
-- Module      : Network.AWS.MediaPackage.Types.EncryptionMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.EncryptionMethod
  ( EncryptionMethod
      ( ..,
        EncryptionMethodAES128,
        EncryptionMethodSAMPLEAES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncryptionMethod = EncryptionMethod'
  { fromEncryptionMethod ::
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

pattern EncryptionMethodAES128 :: EncryptionMethod
pattern EncryptionMethodAES128 = EncryptionMethod' "AES_128"

pattern EncryptionMethodSAMPLEAES :: EncryptionMethod
pattern EncryptionMethodSAMPLEAES = EncryptionMethod' "SAMPLE_AES"

{-# COMPLETE
  EncryptionMethodAES128,
  EncryptionMethodSAMPLEAES,
  EncryptionMethod'
  #-}

instance Prelude.FromText EncryptionMethod where
  parser = EncryptionMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncryptionMethod where
  toText (EncryptionMethod' x) = x

instance Prelude.Hashable EncryptionMethod

instance Prelude.NFData EncryptionMethod

instance Prelude.ToByteString EncryptionMethod

instance Prelude.ToQuery EncryptionMethod

instance Prelude.ToHeader EncryptionMethod

instance Prelude.ToJSON EncryptionMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncryptionMethod where
  parseJSON = Prelude.parseJSONText "EncryptionMethod"
