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
-- Module      : Network.AWS.KMS.Types.KeyUsageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyUsageType
  ( KeyUsageType
      ( ..,
        KeyUsageTypeENCRYPTDECRYPT,
        KeyUsageTypeSIGNVERIFY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype KeyUsageType = KeyUsageType'
  { fromKeyUsageType ::
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

pattern KeyUsageTypeENCRYPTDECRYPT :: KeyUsageType
pattern KeyUsageTypeENCRYPTDECRYPT = KeyUsageType' "ENCRYPT_DECRYPT"

pattern KeyUsageTypeSIGNVERIFY :: KeyUsageType
pattern KeyUsageTypeSIGNVERIFY = KeyUsageType' "SIGN_VERIFY"

{-# COMPLETE
  KeyUsageTypeENCRYPTDECRYPT,
  KeyUsageTypeSIGNVERIFY,
  KeyUsageType'
  #-}

instance Prelude.FromText KeyUsageType where
  parser = KeyUsageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText KeyUsageType where
  toText (KeyUsageType' x) = x

instance Prelude.Hashable KeyUsageType

instance Prelude.NFData KeyUsageType

instance Prelude.ToByteString KeyUsageType

instance Prelude.ToQuery KeyUsageType

instance Prelude.ToHeader KeyUsageType

instance Prelude.ToJSON KeyUsageType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON KeyUsageType where
  parseJSON = Prelude.parseJSONText "KeyUsageType"
