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
-- Module      : Network.AWS.XRay.Types.EncryptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.EncryptionType
  ( EncryptionType
      ( ..,
        EncryptionTypeKMS,
        EncryptionTypeNONE
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

pattern EncryptionTypeKMS :: EncryptionType
pattern EncryptionTypeKMS = EncryptionType' "KMS"

pattern EncryptionTypeNONE :: EncryptionType
pattern EncryptionTypeNONE = EncryptionType' "NONE"

{-# COMPLETE
  EncryptionTypeKMS,
  EncryptionTypeNONE,
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
