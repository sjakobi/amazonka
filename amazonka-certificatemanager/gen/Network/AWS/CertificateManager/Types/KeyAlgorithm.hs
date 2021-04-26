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
-- Module      : Network.AWS.CertificateManager.Types.KeyAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.KeyAlgorithm
  ( KeyAlgorithm
      ( ..,
        KeyAlgorithmECPRIME256V1,
        KeyAlgorithmECSECP384R1,
        KeyAlgorithmECSECP521R1,
        KeyAlgorithmRSA1024,
        KeyAlgorithmRSA2048,
        KeyAlgorithmRSA4096
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype KeyAlgorithm = KeyAlgorithm'
  { fromKeyAlgorithm ::
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

pattern KeyAlgorithmECPRIME256V1 :: KeyAlgorithm
pattern KeyAlgorithmECPRIME256V1 = KeyAlgorithm' "EC_prime256v1"

pattern KeyAlgorithmECSECP384R1 :: KeyAlgorithm
pattern KeyAlgorithmECSECP384R1 = KeyAlgorithm' "EC_secp384r1"

pattern KeyAlgorithmECSECP521R1 :: KeyAlgorithm
pattern KeyAlgorithmECSECP521R1 = KeyAlgorithm' "EC_secp521r1"

pattern KeyAlgorithmRSA1024 :: KeyAlgorithm
pattern KeyAlgorithmRSA1024 = KeyAlgorithm' "RSA_1024"

pattern KeyAlgorithmRSA2048 :: KeyAlgorithm
pattern KeyAlgorithmRSA2048 = KeyAlgorithm' "RSA_2048"

pattern KeyAlgorithmRSA4096 :: KeyAlgorithm
pattern KeyAlgorithmRSA4096 = KeyAlgorithm' "RSA_4096"

{-# COMPLETE
  KeyAlgorithmECPRIME256V1,
  KeyAlgorithmECSECP384R1,
  KeyAlgorithmECSECP521R1,
  KeyAlgorithmRSA1024,
  KeyAlgorithmRSA2048,
  KeyAlgorithmRSA4096,
  KeyAlgorithm'
  #-}

instance Prelude.FromText KeyAlgorithm where
  parser = KeyAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText KeyAlgorithm where
  toText (KeyAlgorithm' x) = x

instance Prelude.Hashable KeyAlgorithm

instance Prelude.NFData KeyAlgorithm

instance Prelude.ToByteString KeyAlgorithm

instance Prelude.ToQuery KeyAlgorithm

instance Prelude.ToHeader KeyAlgorithm

instance Prelude.ToJSON KeyAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON KeyAlgorithm where
  parseJSON = Prelude.parseJSONText "KeyAlgorithm"
