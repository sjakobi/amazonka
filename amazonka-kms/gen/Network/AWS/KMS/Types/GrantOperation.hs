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
-- Module      : Network.AWS.KMS.Types.GrantOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.GrantOperation
  ( GrantOperation
      ( ..,
        GrantOperationCreateGrant,
        GrantOperationDecrypt,
        GrantOperationDescribeKey,
        GrantOperationEncrypt,
        GrantOperationGenerateDataKey,
        GrantOperationGenerateDataKeyPair,
        GrantOperationGenerateDataKeyPairWithoutPlaintext,
        GrantOperationGenerateDataKeyWithoutPlaintext,
        GrantOperationGetPublicKey,
        GrantOperationReEncryptFrom,
        GrantOperationReEncryptTo,
        GrantOperationRetireGrant,
        GrantOperationSign,
        GrantOperationVerify
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GrantOperation = GrantOperation'
  { fromGrantOperation ::
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

pattern GrantOperationCreateGrant :: GrantOperation
pattern GrantOperationCreateGrant = GrantOperation' "CreateGrant"

pattern GrantOperationDecrypt :: GrantOperation
pattern GrantOperationDecrypt = GrantOperation' "Decrypt"

pattern GrantOperationDescribeKey :: GrantOperation
pattern GrantOperationDescribeKey = GrantOperation' "DescribeKey"

pattern GrantOperationEncrypt :: GrantOperation
pattern GrantOperationEncrypt = GrantOperation' "Encrypt"

pattern GrantOperationGenerateDataKey :: GrantOperation
pattern GrantOperationGenerateDataKey = GrantOperation' "GenerateDataKey"

pattern GrantOperationGenerateDataKeyPair :: GrantOperation
pattern GrantOperationGenerateDataKeyPair = GrantOperation' "GenerateDataKeyPair"

pattern GrantOperationGenerateDataKeyPairWithoutPlaintext :: GrantOperation
pattern GrantOperationGenerateDataKeyPairWithoutPlaintext = GrantOperation' "GenerateDataKeyPairWithoutPlaintext"

pattern GrantOperationGenerateDataKeyWithoutPlaintext :: GrantOperation
pattern GrantOperationGenerateDataKeyWithoutPlaintext = GrantOperation' "GenerateDataKeyWithoutPlaintext"

pattern GrantOperationGetPublicKey :: GrantOperation
pattern GrantOperationGetPublicKey = GrantOperation' "GetPublicKey"

pattern GrantOperationReEncryptFrom :: GrantOperation
pattern GrantOperationReEncryptFrom = GrantOperation' "ReEncryptFrom"

pattern GrantOperationReEncryptTo :: GrantOperation
pattern GrantOperationReEncryptTo = GrantOperation' "ReEncryptTo"

pattern GrantOperationRetireGrant :: GrantOperation
pattern GrantOperationRetireGrant = GrantOperation' "RetireGrant"

pattern GrantOperationSign :: GrantOperation
pattern GrantOperationSign = GrantOperation' "Sign"

pattern GrantOperationVerify :: GrantOperation
pattern GrantOperationVerify = GrantOperation' "Verify"

{-# COMPLETE
  GrantOperationCreateGrant,
  GrantOperationDecrypt,
  GrantOperationDescribeKey,
  GrantOperationEncrypt,
  GrantOperationGenerateDataKey,
  GrantOperationGenerateDataKeyPair,
  GrantOperationGenerateDataKeyPairWithoutPlaintext,
  GrantOperationGenerateDataKeyWithoutPlaintext,
  GrantOperationGetPublicKey,
  GrantOperationReEncryptFrom,
  GrantOperationReEncryptTo,
  GrantOperationRetireGrant,
  GrantOperationSign,
  GrantOperationVerify,
  GrantOperation'
  #-}

instance Prelude.FromText GrantOperation where
  parser = GrantOperation' Prelude.<$> Prelude.takeText

instance Prelude.ToText GrantOperation where
  toText (GrantOperation' x) = x

instance Prelude.Hashable GrantOperation

instance Prelude.NFData GrantOperation

instance Prelude.ToByteString GrantOperation

instance Prelude.ToQuery GrantOperation

instance Prelude.ToHeader GrantOperation

instance Prelude.ToJSON GrantOperation where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GrantOperation where
  parseJSON = Prelude.parseJSONText "GrantOperation"
