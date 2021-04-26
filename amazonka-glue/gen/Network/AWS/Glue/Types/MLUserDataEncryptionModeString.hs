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
-- Module      : Network.AWS.Glue.Types.MLUserDataEncryptionModeString
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.MLUserDataEncryptionModeString
  ( MLUserDataEncryptionModeString
      ( ..,
        MLUserDataEncryptionModeStringDISABLED,
        MLUserDataEncryptionModeStringSSEKMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MLUserDataEncryptionModeString = MLUserDataEncryptionModeString'
  { fromMLUserDataEncryptionModeString ::
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

pattern MLUserDataEncryptionModeStringDISABLED :: MLUserDataEncryptionModeString
pattern MLUserDataEncryptionModeStringDISABLED = MLUserDataEncryptionModeString' "DISABLED"

pattern MLUserDataEncryptionModeStringSSEKMS :: MLUserDataEncryptionModeString
pattern MLUserDataEncryptionModeStringSSEKMS = MLUserDataEncryptionModeString' "SSE-KMS"

{-# COMPLETE
  MLUserDataEncryptionModeStringDISABLED,
  MLUserDataEncryptionModeStringSSEKMS,
  MLUserDataEncryptionModeString'
  #-}

instance Prelude.FromText MLUserDataEncryptionModeString where
  parser = MLUserDataEncryptionModeString' Prelude.<$> Prelude.takeText

instance Prelude.ToText MLUserDataEncryptionModeString where
  toText (MLUserDataEncryptionModeString' x) = x

instance Prelude.Hashable MLUserDataEncryptionModeString

instance Prelude.NFData MLUserDataEncryptionModeString

instance Prelude.ToByteString MLUserDataEncryptionModeString

instance Prelude.ToQuery MLUserDataEncryptionModeString

instance Prelude.ToHeader MLUserDataEncryptionModeString

instance Prelude.ToJSON MLUserDataEncryptionModeString where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MLUserDataEncryptionModeString where
  parseJSON = Prelude.parseJSONText "MLUserDataEncryptionModeString"
