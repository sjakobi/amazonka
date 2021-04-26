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
-- Module      : Network.AWS.SageMaker.Types.CompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CompressionType
  ( CompressionType
      ( ..,
        CompressionTypeGzip,
        CompressionTypeNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CompressionType = CompressionType'
  { fromCompressionType ::
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

pattern CompressionTypeGzip :: CompressionType
pattern CompressionTypeGzip = CompressionType' "Gzip"

pattern CompressionTypeNone :: CompressionType
pattern CompressionTypeNone = CompressionType' "None"

{-# COMPLETE
  CompressionTypeGzip,
  CompressionTypeNone,
  CompressionType'
  #-}

instance Prelude.FromText CompressionType where
  parser = CompressionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CompressionType where
  toText (CompressionType' x) = x

instance Prelude.Hashable CompressionType

instance Prelude.NFData CompressionType

instance Prelude.ToByteString CompressionType

instance Prelude.ToQuery CompressionType

instance Prelude.ToHeader CompressionType

instance Prelude.ToJSON CompressionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CompressionType where
  parseJSON = Prelude.parseJSONText "CompressionType"
