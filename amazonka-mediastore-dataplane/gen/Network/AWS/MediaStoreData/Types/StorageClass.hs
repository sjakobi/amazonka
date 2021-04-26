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
-- Module      : Network.AWS.MediaStoreData.Types.StorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStoreData.Types.StorageClass
  ( StorageClass
      ( ..,
        StorageClassTEMPORAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StorageClass = StorageClass'
  { fromStorageClass ::
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

pattern StorageClassTEMPORAL :: StorageClass
pattern StorageClassTEMPORAL = StorageClass' "TEMPORAL"

{-# COMPLETE
  StorageClassTEMPORAL,
  StorageClass'
  #-}

instance Prelude.FromText StorageClass where
  parser = StorageClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText StorageClass where
  toText (StorageClass' x) = x

instance Prelude.Hashable StorageClass

instance Prelude.NFData StorageClass

instance Prelude.ToByteString StorageClass

instance Prelude.ToQuery StorageClass

instance Prelude.ToHeader StorageClass

instance Prelude.ToJSON StorageClass where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StorageClass where
  parseJSON = Prelude.parseJSONText "StorageClass"
