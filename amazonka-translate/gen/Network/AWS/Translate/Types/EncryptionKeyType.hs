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
-- Module      : Network.AWS.Translate.Types.EncryptionKeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.EncryptionKeyType
  ( EncryptionKeyType
      ( ..,
        EncryptionKeyTypeKMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncryptionKeyType = EncryptionKeyType'
  { fromEncryptionKeyType ::
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

pattern EncryptionKeyTypeKMS :: EncryptionKeyType
pattern EncryptionKeyTypeKMS = EncryptionKeyType' "KMS"

{-# COMPLETE
  EncryptionKeyTypeKMS,
  EncryptionKeyType'
  #-}

instance Prelude.FromText EncryptionKeyType where
  parser = EncryptionKeyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncryptionKeyType where
  toText (EncryptionKeyType' x) = x

instance Prelude.Hashable EncryptionKeyType

instance Prelude.NFData EncryptionKeyType

instance Prelude.ToByteString EncryptionKeyType

instance Prelude.ToQuery EncryptionKeyType

instance Prelude.ToHeader EncryptionKeyType

instance Prelude.ToJSON EncryptionKeyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncryptionKeyType where
  parseJSON = Prelude.parseJSONText "EncryptionKeyType"
