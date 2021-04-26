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
-- Module      : Network.AWS.Athena.Types.EncryptionOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.EncryptionOption
  ( EncryptionOption
      ( ..,
        EncryptionOptionCSEKMS,
        EncryptionOptionSSEKMS,
        EncryptionOptionSSES3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncryptionOption = EncryptionOption'
  { fromEncryptionOption ::
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

pattern EncryptionOptionCSEKMS :: EncryptionOption
pattern EncryptionOptionCSEKMS = EncryptionOption' "CSE_KMS"

pattern EncryptionOptionSSEKMS :: EncryptionOption
pattern EncryptionOptionSSEKMS = EncryptionOption' "SSE_KMS"

pattern EncryptionOptionSSES3 :: EncryptionOption
pattern EncryptionOptionSSES3 = EncryptionOption' "SSE_S3"

{-# COMPLETE
  EncryptionOptionCSEKMS,
  EncryptionOptionSSEKMS,
  EncryptionOptionSSES3,
  EncryptionOption'
  #-}

instance Prelude.FromText EncryptionOption where
  parser = EncryptionOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncryptionOption where
  toText (EncryptionOption' x) = x

instance Prelude.Hashable EncryptionOption

instance Prelude.NFData EncryptionOption

instance Prelude.ToByteString EncryptionOption

instance Prelude.ToQuery EncryptionOption

instance Prelude.ToHeader EncryptionOption

instance Prelude.ToJSON EncryptionOption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EncryptionOption where
  parseJSON = Prelude.parseJSONText "EncryptionOption"
