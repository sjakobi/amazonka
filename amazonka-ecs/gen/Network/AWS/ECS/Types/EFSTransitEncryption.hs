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
-- Module      : Network.AWS.ECS.Types.EFSTransitEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.EFSTransitEncryption
  ( EFSTransitEncryption
      ( ..,
        EFSTransitEncryptionDISABLED,
        EFSTransitEncryptionENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EFSTransitEncryption = EFSTransitEncryption'
  { fromEFSTransitEncryption ::
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

pattern EFSTransitEncryptionDISABLED :: EFSTransitEncryption
pattern EFSTransitEncryptionDISABLED = EFSTransitEncryption' "DISABLED"

pattern EFSTransitEncryptionENABLED :: EFSTransitEncryption
pattern EFSTransitEncryptionENABLED = EFSTransitEncryption' "ENABLED"

{-# COMPLETE
  EFSTransitEncryptionDISABLED,
  EFSTransitEncryptionENABLED,
  EFSTransitEncryption'
  #-}

instance Prelude.FromText EFSTransitEncryption where
  parser = EFSTransitEncryption' Prelude.<$> Prelude.takeText

instance Prelude.ToText EFSTransitEncryption where
  toText (EFSTransitEncryption' x) = x

instance Prelude.Hashable EFSTransitEncryption

instance Prelude.NFData EFSTransitEncryption

instance Prelude.ToByteString EFSTransitEncryption

instance Prelude.ToQuery EFSTransitEncryption

instance Prelude.ToHeader EFSTransitEncryption

instance Prelude.ToJSON EFSTransitEncryption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EFSTransitEncryption where
  parseJSON = Prelude.parseJSONText "EFSTransitEncryption"
