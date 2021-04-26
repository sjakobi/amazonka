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
-- Module      : Network.AWS.MediaConvert.Types.DecryptionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DecryptionMode
  ( DecryptionMode
      ( ..,
        DecryptionModeAESCBC,
        DecryptionModeAESCTR,
        DecryptionModeAESGCM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the encryption mode that you used to encrypt your input files.
newtype DecryptionMode = DecryptionMode'
  { fromDecryptionMode ::
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

pattern DecryptionModeAESCBC :: DecryptionMode
pattern DecryptionModeAESCBC = DecryptionMode' "AES_CBC"

pattern DecryptionModeAESCTR :: DecryptionMode
pattern DecryptionModeAESCTR = DecryptionMode' "AES_CTR"

pattern DecryptionModeAESGCM :: DecryptionMode
pattern DecryptionModeAESGCM = DecryptionMode' "AES_GCM"

{-# COMPLETE
  DecryptionModeAESCBC,
  DecryptionModeAESCTR,
  DecryptionModeAESGCM,
  DecryptionMode'
  #-}

instance Prelude.FromText DecryptionMode where
  parser = DecryptionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DecryptionMode where
  toText (DecryptionMode' x) = x

instance Prelude.Hashable DecryptionMode

instance Prelude.NFData DecryptionMode

instance Prelude.ToByteString DecryptionMode

instance Prelude.ToQuery DecryptionMode

instance Prelude.ToHeader DecryptionMode

instance Prelude.ToJSON DecryptionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DecryptionMode where
  parseJSON = Prelude.parseJSONText "DecryptionMode"
