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
-- Module      : Network.AWS.Glue.Types.CatalogEncryptionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CatalogEncryptionMode
  ( CatalogEncryptionMode
      ( ..,
        CatalogEncryptionModeDISABLED,
        CatalogEncryptionModeSSEKMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CatalogEncryptionMode = CatalogEncryptionMode'
  { fromCatalogEncryptionMode ::
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

pattern CatalogEncryptionModeDISABLED :: CatalogEncryptionMode
pattern CatalogEncryptionModeDISABLED = CatalogEncryptionMode' "DISABLED"

pattern CatalogEncryptionModeSSEKMS :: CatalogEncryptionMode
pattern CatalogEncryptionModeSSEKMS = CatalogEncryptionMode' "SSE-KMS"

{-# COMPLETE
  CatalogEncryptionModeDISABLED,
  CatalogEncryptionModeSSEKMS,
  CatalogEncryptionMode'
  #-}

instance Prelude.FromText CatalogEncryptionMode where
  parser = CatalogEncryptionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CatalogEncryptionMode where
  toText (CatalogEncryptionMode' x) = x

instance Prelude.Hashable CatalogEncryptionMode

instance Prelude.NFData CatalogEncryptionMode

instance Prelude.ToByteString CatalogEncryptionMode

instance Prelude.ToQuery CatalogEncryptionMode

instance Prelude.ToHeader CatalogEncryptionMode

instance Prelude.ToJSON CatalogEncryptionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CatalogEncryptionMode where
  parseJSON = Prelude.parseJSONText "CatalogEncryptionMode"
