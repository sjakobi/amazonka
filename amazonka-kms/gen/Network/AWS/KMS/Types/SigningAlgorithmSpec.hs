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
-- Module      : Network.AWS.KMS.Types.SigningAlgorithmSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.SigningAlgorithmSpec
  ( SigningAlgorithmSpec
      ( ..,
        SigningAlgorithmSpecECDSASHA256,
        SigningAlgorithmSpecECDSASHA384,
        SigningAlgorithmSpecECDSASHA512,
        SigningAlgorithmSpecRSASSAPKCS1V15SHA256,
        SigningAlgorithmSpecRSASSAPKCS1V15SHA384,
        SigningAlgorithmSpecRSASSAPKCS1V15SHA512,
        SigningAlgorithmSpecRSASSAPSSSHA256,
        SigningAlgorithmSpecRSASSAPSSSHA384,
        SigningAlgorithmSpecRSASSAPSSSHA512
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SigningAlgorithmSpec = SigningAlgorithmSpec'
  { fromSigningAlgorithmSpec ::
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

pattern SigningAlgorithmSpecECDSASHA256 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecECDSASHA256 = SigningAlgorithmSpec' "ECDSA_SHA_256"

pattern SigningAlgorithmSpecECDSASHA384 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecECDSASHA384 = SigningAlgorithmSpec' "ECDSA_SHA_384"

pattern SigningAlgorithmSpecECDSASHA512 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecECDSASHA512 = SigningAlgorithmSpec' "ECDSA_SHA_512"

pattern SigningAlgorithmSpecRSASSAPKCS1V15SHA256 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecRSASSAPKCS1V15SHA256 = SigningAlgorithmSpec' "RSASSA_PKCS1_V1_5_SHA_256"

pattern SigningAlgorithmSpecRSASSAPKCS1V15SHA384 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecRSASSAPKCS1V15SHA384 = SigningAlgorithmSpec' "RSASSA_PKCS1_V1_5_SHA_384"

pattern SigningAlgorithmSpecRSASSAPKCS1V15SHA512 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecRSASSAPKCS1V15SHA512 = SigningAlgorithmSpec' "RSASSA_PKCS1_V1_5_SHA_512"

pattern SigningAlgorithmSpecRSASSAPSSSHA256 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecRSASSAPSSSHA256 = SigningAlgorithmSpec' "RSASSA_PSS_SHA_256"

pattern SigningAlgorithmSpecRSASSAPSSSHA384 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecRSASSAPSSSHA384 = SigningAlgorithmSpec' "RSASSA_PSS_SHA_384"

pattern SigningAlgorithmSpecRSASSAPSSSHA512 :: SigningAlgorithmSpec
pattern SigningAlgorithmSpecRSASSAPSSSHA512 = SigningAlgorithmSpec' "RSASSA_PSS_SHA_512"

{-# COMPLETE
  SigningAlgorithmSpecECDSASHA256,
  SigningAlgorithmSpecECDSASHA384,
  SigningAlgorithmSpecECDSASHA512,
  SigningAlgorithmSpecRSASSAPKCS1V15SHA256,
  SigningAlgorithmSpecRSASSAPKCS1V15SHA384,
  SigningAlgorithmSpecRSASSAPKCS1V15SHA512,
  SigningAlgorithmSpecRSASSAPSSSHA256,
  SigningAlgorithmSpecRSASSAPSSSHA384,
  SigningAlgorithmSpecRSASSAPSSSHA512,
  SigningAlgorithmSpec'
  #-}

instance Prelude.FromText SigningAlgorithmSpec where
  parser = SigningAlgorithmSpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText SigningAlgorithmSpec where
  toText (SigningAlgorithmSpec' x) = x

instance Prelude.Hashable SigningAlgorithmSpec

instance Prelude.NFData SigningAlgorithmSpec

instance Prelude.ToByteString SigningAlgorithmSpec

instance Prelude.ToQuery SigningAlgorithmSpec

instance Prelude.ToHeader SigningAlgorithmSpec

instance Prelude.ToJSON SigningAlgorithmSpec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SigningAlgorithmSpec where
  parseJSON = Prelude.parseJSONText "SigningAlgorithmSpec"
