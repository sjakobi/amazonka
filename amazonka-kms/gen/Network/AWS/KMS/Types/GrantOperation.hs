{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CreateGrant,
        Decrypt,
        DescribeKey,
        Encrypt,
        GenerateDataKey,
        GenerateDataKeyPair,
        GenerateDataKeyPairWithoutPlaintext,
        GenerateDataKeyWithoutPlaintext,
        GetPublicKey,
        ReEncryptFrom,
        ReEncryptTo,
        RetireGrant,
        Sign,
        Verify
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GrantOperation = GrantOperation' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreateGrant :: GrantOperation
pattern CreateGrant = GrantOperation' "CreateGrant"

pattern Decrypt :: GrantOperation
pattern Decrypt = GrantOperation' "Decrypt"

pattern DescribeKey :: GrantOperation
pattern DescribeKey = GrantOperation' "DescribeKey"

pattern Encrypt :: GrantOperation
pattern Encrypt = GrantOperation' "Encrypt"

pattern GenerateDataKey :: GrantOperation
pattern GenerateDataKey = GrantOperation' "GenerateDataKey"

pattern GenerateDataKeyPair :: GrantOperation
pattern GenerateDataKeyPair = GrantOperation' "GenerateDataKeyPair"

pattern GenerateDataKeyPairWithoutPlaintext :: GrantOperation
pattern GenerateDataKeyPairWithoutPlaintext = GrantOperation' "GenerateDataKeyPairWithoutPlaintext"

pattern GenerateDataKeyWithoutPlaintext :: GrantOperation
pattern GenerateDataKeyWithoutPlaintext = GrantOperation' "GenerateDataKeyWithoutPlaintext"

pattern GetPublicKey :: GrantOperation
pattern GetPublicKey = GrantOperation' "GetPublicKey"

pattern ReEncryptFrom :: GrantOperation
pattern ReEncryptFrom = GrantOperation' "ReEncryptFrom"

pattern ReEncryptTo :: GrantOperation
pattern ReEncryptTo = GrantOperation' "ReEncryptTo"

pattern RetireGrant :: GrantOperation
pattern RetireGrant = GrantOperation' "RetireGrant"

pattern Sign :: GrantOperation
pattern Sign = GrantOperation' "Sign"

pattern Verify :: GrantOperation
pattern Verify = GrantOperation' "Verify"

{-# COMPLETE
  CreateGrant,
  Decrypt,
  DescribeKey,
  Encrypt,
  GenerateDataKey,
  GenerateDataKeyPair,
  GenerateDataKeyPairWithoutPlaintext,
  GenerateDataKeyWithoutPlaintext,
  GetPublicKey,
  ReEncryptFrom,
  ReEncryptTo,
  RetireGrant,
  Sign,
  Verify,
  GrantOperation'
  #-}

instance FromText GrantOperation where
  parser = (GrantOperation' . mk) <$> takeText

instance ToText GrantOperation where
  toText (GrantOperation' ci) = original ci

instance Hashable GrantOperation

instance NFData GrantOperation

instance ToByteString GrantOperation

instance ToQuery GrantOperation

instance ToHeader GrantOperation

instance ToJSON GrantOperation where
  toJSON = toJSONText

instance FromJSON GrantOperation where
  parseJSON = parseJSONText "GrantOperation"
