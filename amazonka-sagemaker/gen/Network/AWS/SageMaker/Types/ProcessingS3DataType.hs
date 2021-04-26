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
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3DataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3DataType
  ( ProcessingS3DataType
      ( ..,
        ProcessingS3DataTypeManifestFile,
        ProcessingS3DataTypeS3Prefix
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessingS3DataType = ProcessingS3DataType'
  { fromProcessingS3DataType ::
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

pattern ProcessingS3DataTypeManifestFile :: ProcessingS3DataType
pattern ProcessingS3DataTypeManifestFile = ProcessingS3DataType' "ManifestFile"

pattern ProcessingS3DataTypeS3Prefix :: ProcessingS3DataType
pattern ProcessingS3DataTypeS3Prefix = ProcessingS3DataType' "S3Prefix"

{-# COMPLETE
  ProcessingS3DataTypeManifestFile,
  ProcessingS3DataTypeS3Prefix,
  ProcessingS3DataType'
  #-}

instance Prelude.FromText ProcessingS3DataType where
  parser = ProcessingS3DataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessingS3DataType where
  toText (ProcessingS3DataType' x) = x

instance Prelude.Hashable ProcessingS3DataType

instance Prelude.NFData ProcessingS3DataType

instance Prelude.ToByteString ProcessingS3DataType

instance Prelude.ToQuery ProcessingS3DataType

instance Prelude.ToHeader ProcessingS3DataType

instance Prelude.ToJSON ProcessingS3DataType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessingS3DataType where
  parseJSON = Prelude.parseJSONText "ProcessingS3DataType"
