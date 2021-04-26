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
-- Module      : Network.AWS.S3.Types.CompressionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.CompressionType
  ( CompressionType
      ( ..,
        CompressionTypeBZIP2,
        CompressionTypeGZIP,
        CompressionTypeNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

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

pattern CompressionTypeBZIP2 :: CompressionType
pattern CompressionTypeBZIP2 = CompressionType' "BZIP2"

pattern CompressionTypeGZIP :: CompressionType
pattern CompressionTypeGZIP = CompressionType' "GZIP"

pattern CompressionTypeNONE :: CompressionType
pattern CompressionTypeNONE = CompressionType' "NONE"

{-# COMPLETE
  CompressionTypeBZIP2,
  CompressionTypeGZIP,
  CompressionTypeNONE,
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

instance Prelude.ToXML CompressionType where
  toXML = Prelude.toXMLText
