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
-- Module      : Network.AWS.ECR.Types.EncryptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.EncryptionType
  ( EncryptionType
      ( ..,
        EncryptionTypeAES256,
        EncryptionTypeKMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncryptionType = EncryptionType'
  { fromEncryptionType ::
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

pattern EncryptionTypeAES256 :: EncryptionType
pattern EncryptionTypeAES256 = EncryptionType' "AES256"

pattern EncryptionTypeKMS :: EncryptionType
pattern EncryptionTypeKMS = EncryptionType' "KMS"

{-# COMPLETE
  EncryptionTypeAES256,
  EncryptionTypeKMS,
  EncryptionType'
  #-}

instance Prelude.FromText EncryptionType where
  parser = EncryptionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncryptionType where
  toText (EncryptionType' x) = x

instance Prelude.Hashable EncryptionType

instance Prelude.NFData EncryptionType

instance Prelude.ToByteString EncryptionType

instance Prelude.ToQuery EncryptionType

instance Prelude.ToHeader EncryptionType

instance Prelude.ToJSON EncryptionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncryptionType where
  parseJSON = Prelude.parseJSONText "EncryptionType"
