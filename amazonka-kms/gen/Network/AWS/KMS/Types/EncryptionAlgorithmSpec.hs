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
-- Module      : Network.AWS.KMS.Types.EncryptionAlgorithmSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.EncryptionAlgorithmSpec
  ( EncryptionAlgorithmSpec
      ( ..,
        EncryptionAlgorithmSpecRSAESOAEPSHA1,
        EncryptionAlgorithmSpecRSAESOAEPSHA256,
        EncryptionAlgorithmSpecSYMMETRICDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncryptionAlgorithmSpec = EncryptionAlgorithmSpec'
  { fromEncryptionAlgorithmSpec ::
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

pattern EncryptionAlgorithmSpecRSAESOAEPSHA1 :: EncryptionAlgorithmSpec
pattern EncryptionAlgorithmSpecRSAESOAEPSHA1 = EncryptionAlgorithmSpec' "RSAES_OAEP_SHA_1"

pattern EncryptionAlgorithmSpecRSAESOAEPSHA256 :: EncryptionAlgorithmSpec
pattern EncryptionAlgorithmSpecRSAESOAEPSHA256 = EncryptionAlgorithmSpec' "RSAES_OAEP_SHA_256"

pattern EncryptionAlgorithmSpecSYMMETRICDEFAULT :: EncryptionAlgorithmSpec
pattern EncryptionAlgorithmSpecSYMMETRICDEFAULT = EncryptionAlgorithmSpec' "SYMMETRIC_DEFAULT"

{-# COMPLETE
  EncryptionAlgorithmSpecRSAESOAEPSHA1,
  EncryptionAlgorithmSpecRSAESOAEPSHA256,
  EncryptionAlgorithmSpecSYMMETRICDEFAULT,
  EncryptionAlgorithmSpec'
  #-}

instance Prelude.FromText EncryptionAlgorithmSpec where
  parser = EncryptionAlgorithmSpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncryptionAlgorithmSpec where
  toText (EncryptionAlgorithmSpec' x) = x

instance Prelude.Hashable EncryptionAlgorithmSpec

instance Prelude.NFData EncryptionAlgorithmSpec

instance Prelude.ToByteString EncryptionAlgorithmSpec

instance Prelude.ToQuery EncryptionAlgorithmSpec

instance Prelude.ToHeader EncryptionAlgorithmSpec

instance Prelude.ToJSON EncryptionAlgorithmSpec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncryptionAlgorithmSpec where
  parseJSON = Prelude.parseJSONText "EncryptionAlgorithmSpec"
