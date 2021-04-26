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
-- Module      : Network.AWS.DMS.Types.EncryptionModeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.EncryptionModeValue
  ( EncryptionModeValue
      ( ..,
        EncryptionModeValueSseKms,
        EncryptionModeValueSseS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncryptionModeValue = EncryptionModeValue'
  { fromEncryptionModeValue ::
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

pattern EncryptionModeValueSseKms :: EncryptionModeValue
pattern EncryptionModeValueSseKms = EncryptionModeValue' "sse-kms"

pattern EncryptionModeValueSseS3 :: EncryptionModeValue
pattern EncryptionModeValueSseS3 = EncryptionModeValue' "sse-s3"

{-# COMPLETE
  EncryptionModeValueSseKms,
  EncryptionModeValueSseS3,
  EncryptionModeValue'
  #-}

instance Prelude.FromText EncryptionModeValue where
  parser = EncryptionModeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncryptionModeValue where
  toText (EncryptionModeValue' x) = x

instance Prelude.Hashable EncryptionModeValue

instance Prelude.NFData EncryptionModeValue

instance Prelude.ToByteString EncryptionModeValue

instance Prelude.ToQuery EncryptionModeValue

instance Prelude.ToHeader EncryptionModeValue

instance Prelude.ToJSON EncryptionModeValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncryptionModeValue where
  parseJSON = Prelude.parseJSONText "EncryptionModeValue"
