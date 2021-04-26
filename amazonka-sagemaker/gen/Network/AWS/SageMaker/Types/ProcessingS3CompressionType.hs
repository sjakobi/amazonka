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
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3CompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3CompressionType
  ( ProcessingS3CompressionType
      ( ..,
        ProcessingS3CompressionTypeGzip,
        ProcessingS3CompressionTypeNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessingS3CompressionType = ProcessingS3CompressionType'
  { fromProcessingS3CompressionType ::
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

pattern ProcessingS3CompressionTypeGzip :: ProcessingS3CompressionType
pattern ProcessingS3CompressionTypeGzip = ProcessingS3CompressionType' "Gzip"

pattern ProcessingS3CompressionTypeNone :: ProcessingS3CompressionType
pattern ProcessingS3CompressionTypeNone = ProcessingS3CompressionType' "None"

{-# COMPLETE
  ProcessingS3CompressionTypeGzip,
  ProcessingS3CompressionTypeNone,
  ProcessingS3CompressionType'
  #-}

instance Prelude.FromText ProcessingS3CompressionType where
  parser = ProcessingS3CompressionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessingS3CompressionType where
  toText (ProcessingS3CompressionType' x) = x

instance Prelude.Hashable ProcessingS3CompressionType

instance Prelude.NFData ProcessingS3CompressionType

instance Prelude.ToByteString ProcessingS3CompressionType

instance Prelude.ToQuery ProcessingS3CompressionType

instance Prelude.ToHeader ProcessingS3CompressionType

instance Prelude.ToJSON ProcessingS3CompressionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessingS3CompressionType where
  parseJSON = Prelude.parseJSONText "ProcessingS3CompressionType"
