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
-- Module      : Network.AWS.S3.Types.StorageClassAnalysisSchemaVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.StorageClassAnalysisSchemaVersion
  ( StorageClassAnalysisSchemaVersion
      ( ..,
        StorageClassAnalysisSchemaVersionV1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype StorageClassAnalysisSchemaVersion = StorageClassAnalysisSchemaVersion'
  { fromStorageClassAnalysisSchemaVersion ::
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

pattern StorageClassAnalysisSchemaVersionV1 :: StorageClassAnalysisSchemaVersion
pattern StorageClassAnalysisSchemaVersionV1 = StorageClassAnalysisSchemaVersion' "V_1"

{-# COMPLETE
  StorageClassAnalysisSchemaVersionV1,
  StorageClassAnalysisSchemaVersion'
  #-}

instance Prelude.FromText StorageClassAnalysisSchemaVersion where
  parser = StorageClassAnalysisSchemaVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText StorageClassAnalysisSchemaVersion where
  toText (StorageClassAnalysisSchemaVersion' x) = x

instance Prelude.Hashable StorageClassAnalysisSchemaVersion

instance Prelude.NFData StorageClassAnalysisSchemaVersion

instance Prelude.ToByteString StorageClassAnalysisSchemaVersion

instance Prelude.ToQuery StorageClassAnalysisSchemaVersion

instance Prelude.ToHeader StorageClassAnalysisSchemaVersion

instance Prelude.FromXML StorageClassAnalysisSchemaVersion where
  parseXML = Prelude.parseXMLText "StorageClassAnalysisSchemaVersion"

instance Prelude.ToXML StorageClassAnalysisSchemaVersion where
  toXML = Prelude.toXMLText
