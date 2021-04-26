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
-- Module      : Network.AWS.CertificateManagerPCA.Types.SigningAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.SigningAlgorithm
  ( SigningAlgorithm
      ( ..,
        SigningAlgorithmSHA256WITHECDSA,
        SigningAlgorithmSHA256WITHRSA,
        SigningAlgorithmSHA384WITHECDSA,
        SigningAlgorithmSHA384WITHRSA,
        SigningAlgorithmSHA512WITHECDSA,
        SigningAlgorithmSHA512WITHRSA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SigningAlgorithm = SigningAlgorithm'
  { fromSigningAlgorithm ::
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

pattern SigningAlgorithmSHA256WITHECDSA :: SigningAlgorithm
pattern SigningAlgorithmSHA256WITHECDSA = SigningAlgorithm' "SHA256WITHECDSA"

pattern SigningAlgorithmSHA256WITHRSA :: SigningAlgorithm
pattern SigningAlgorithmSHA256WITHRSA = SigningAlgorithm' "SHA256WITHRSA"

pattern SigningAlgorithmSHA384WITHECDSA :: SigningAlgorithm
pattern SigningAlgorithmSHA384WITHECDSA = SigningAlgorithm' "SHA384WITHECDSA"

pattern SigningAlgorithmSHA384WITHRSA :: SigningAlgorithm
pattern SigningAlgorithmSHA384WITHRSA = SigningAlgorithm' "SHA384WITHRSA"

pattern SigningAlgorithmSHA512WITHECDSA :: SigningAlgorithm
pattern SigningAlgorithmSHA512WITHECDSA = SigningAlgorithm' "SHA512WITHECDSA"

pattern SigningAlgorithmSHA512WITHRSA :: SigningAlgorithm
pattern SigningAlgorithmSHA512WITHRSA = SigningAlgorithm' "SHA512WITHRSA"

{-# COMPLETE
  SigningAlgorithmSHA256WITHECDSA,
  SigningAlgorithmSHA256WITHRSA,
  SigningAlgorithmSHA384WITHECDSA,
  SigningAlgorithmSHA384WITHRSA,
  SigningAlgorithmSHA512WITHECDSA,
  SigningAlgorithmSHA512WITHRSA,
  SigningAlgorithm'
  #-}

instance Prelude.FromText SigningAlgorithm where
  parser = SigningAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText SigningAlgorithm where
  toText (SigningAlgorithm' x) = x

instance Prelude.Hashable SigningAlgorithm

instance Prelude.NFData SigningAlgorithm

instance Prelude.ToByteString SigningAlgorithm

instance Prelude.ToQuery SigningAlgorithm

instance Prelude.ToHeader SigningAlgorithm

instance Prelude.ToJSON SigningAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SigningAlgorithm where
  parseJSON = Prelude.parseJSONText "SigningAlgorithm"
