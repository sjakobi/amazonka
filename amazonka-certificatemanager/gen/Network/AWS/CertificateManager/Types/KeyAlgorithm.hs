{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        EcPRIME256V1,
        EcSECP384R1,
        EcSECP521R1,
        Rsa1024,
        Rsa2048,
        Rsa4096
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data KeyAlgorithm = KeyAlgorithm' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EcPRIME256V1 :: KeyAlgorithm
pattern EcPRIME256V1 = KeyAlgorithm' "EC_prime256v1"

pattern EcSECP384R1 :: KeyAlgorithm
pattern EcSECP384R1 = KeyAlgorithm' "EC_secp384r1"

pattern EcSECP521R1 :: KeyAlgorithm
pattern EcSECP521R1 = KeyAlgorithm' "EC_secp521r1"

pattern Rsa1024 :: KeyAlgorithm
pattern Rsa1024 = KeyAlgorithm' "RSA_1024"

pattern Rsa2048 :: KeyAlgorithm
pattern Rsa2048 = KeyAlgorithm' "RSA_2048"

pattern Rsa4096 :: KeyAlgorithm
pattern Rsa4096 = KeyAlgorithm' "RSA_4096"

{-# COMPLETE
  EcPRIME256V1,
  EcSECP384R1,
  EcSECP521R1,
  Rsa1024,
  Rsa2048,
  Rsa4096,
  KeyAlgorithm'
  #-}

instance FromText KeyAlgorithm where
  parser = (KeyAlgorithm' . mk) <$> takeText

instance ToText KeyAlgorithm where
  toText (KeyAlgorithm' ci) = original ci

instance Hashable KeyAlgorithm

instance NFData KeyAlgorithm

instance ToByteString KeyAlgorithm

instance ToQuery KeyAlgorithm

instance ToHeader KeyAlgorithm

instance ToJSON KeyAlgorithm where
  toJSON = toJSONText

instance FromJSON KeyAlgorithm where
  parseJSON = parseJSONText "KeyAlgorithm"
