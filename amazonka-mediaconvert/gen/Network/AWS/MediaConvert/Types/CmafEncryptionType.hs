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
-- Module      : Network.AWS.MediaConvert.Types.CmafEncryptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafEncryptionType
  ( CmafEncryptionType
      ( ..,
        CmafEncryptionTypeAESCTR,
        CmafEncryptionTypeSAMPLEAES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the encryption scheme that you want the service to use when
-- encrypting your CMAF segments. Choose AES-CBC subsample (SAMPLE-AES) or
-- AES_CTR (AES-CTR).
newtype CmafEncryptionType = CmafEncryptionType'
  { fromCmafEncryptionType ::
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

pattern CmafEncryptionTypeAESCTR :: CmafEncryptionType
pattern CmafEncryptionTypeAESCTR = CmafEncryptionType' "AES_CTR"

pattern CmafEncryptionTypeSAMPLEAES :: CmafEncryptionType
pattern CmafEncryptionTypeSAMPLEAES = CmafEncryptionType' "SAMPLE_AES"

{-# COMPLETE
  CmafEncryptionTypeAESCTR,
  CmafEncryptionTypeSAMPLEAES,
  CmafEncryptionType'
  #-}

instance Prelude.FromText CmafEncryptionType where
  parser = CmafEncryptionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafEncryptionType where
  toText (CmafEncryptionType' x) = x

instance Prelude.Hashable CmafEncryptionType

instance Prelude.NFData CmafEncryptionType

instance Prelude.ToByteString CmafEncryptionType

instance Prelude.ToQuery CmafEncryptionType

instance Prelude.ToHeader CmafEncryptionType

instance Prelude.ToJSON CmafEncryptionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafEncryptionType where
  parseJSON = Prelude.parseJSONText "CmafEncryptionType"
