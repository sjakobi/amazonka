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
-- Module      : Network.AWS.Glue.Types.S3EncryptionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.S3EncryptionMode
  ( S3EncryptionMode
      ( ..,
        S3EncryptionModeDISABLED,
        S3EncryptionModeSSEKMS,
        S3EncryptionModeSSES3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype S3EncryptionMode = S3EncryptionMode'
  { fromS3EncryptionMode ::
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

pattern S3EncryptionModeDISABLED :: S3EncryptionMode
pattern S3EncryptionModeDISABLED = S3EncryptionMode' "DISABLED"

pattern S3EncryptionModeSSEKMS :: S3EncryptionMode
pattern S3EncryptionModeSSEKMS = S3EncryptionMode' "SSE-KMS"

pattern S3EncryptionModeSSES3 :: S3EncryptionMode
pattern S3EncryptionModeSSES3 = S3EncryptionMode' "SSE-S3"

{-# COMPLETE
  S3EncryptionModeDISABLED,
  S3EncryptionModeSSEKMS,
  S3EncryptionModeSSES3,
  S3EncryptionMode'
  #-}

instance Prelude.FromText S3EncryptionMode where
  parser = S3EncryptionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText S3EncryptionMode where
  toText (S3EncryptionMode' x) = x

instance Prelude.Hashable S3EncryptionMode

instance Prelude.NFData S3EncryptionMode

instance Prelude.ToByteString S3EncryptionMode

instance Prelude.ToQuery S3EncryptionMode

instance Prelude.ToHeader S3EncryptionMode

instance Prelude.ToJSON S3EncryptionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON S3EncryptionMode where
  parseJSON = Prelude.parseJSONText "S3EncryptionMode"
