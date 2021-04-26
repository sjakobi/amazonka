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
-- Module      : Network.AWS.AppStream.Types.StorageConnectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StorageConnectorType
  ( StorageConnectorType
      ( ..,
        StorageConnectorTypeGOOGLEDRIVE,
        StorageConnectorTypeHOMEFOLDERS,
        StorageConnectorTypeONEDRIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of storage connector.
newtype StorageConnectorType = StorageConnectorType'
  { fromStorageConnectorType ::
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

pattern StorageConnectorTypeGOOGLEDRIVE :: StorageConnectorType
pattern StorageConnectorTypeGOOGLEDRIVE = StorageConnectorType' "GOOGLE_DRIVE"

pattern StorageConnectorTypeHOMEFOLDERS :: StorageConnectorType
pattern StorageConnectorTypeHOMEFOLDERS = StorageConnectorType' "HOMEFOLDERS"

pattern StorageConnectorTypeONEDRIVE :: StorageConnectorType
pattern StorageConnectorTypeONEDRIVE = StorageConnectorType' "ONE_DRIVE"

{-# COMPLETE
  StorageConnectorTypeGOOGLEDRIVE,
  StorageConnectorTypeHOMEFOLDERS,
  StorageConnectorTypeONEDRIVE,
  StorageConnectorType'
  #-}

instance Prelude.FromText StorageConnectorType where
  parser = StorageConnectorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StorageConnectorType where
  toText (StorageConnectorType' x) = x

instance Prelude.Hashable StorageConnectorType

instance Prelude.NFData StorageConnectorType

instance Prelude.ToByteString StorageConnectorType

instance Prelude.ToQuery StorageConnectorType

instance Prelude.ToHeader StorageConnectorType

instance Prelude.ToJSON StorageConnectorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StorageConnectorType where
  parseJSON = Prelude.parseJSONText "StorageConnectorType"
