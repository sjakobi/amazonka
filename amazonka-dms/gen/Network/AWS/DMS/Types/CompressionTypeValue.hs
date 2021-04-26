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
-- Module      : Network.AWS.DMS.Types.CompressionTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.CompressionTypeValue
  ( CompressionTypeValue
      ( ..,
        CompressionTypeValueGzip,
        CompressionTypeValueNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CompressionTypeValue = CompressionTypeValue'
  { fromCompressionTypeValue ::
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

pattern CompressionTypeValueGzip :: CompressionTypeValue
pattern CompressionTypeValueGzip = CompressionTypeValue' "gzip"

pattern CompressionTypeValueNone :: CompressionTypeValue
pattern CompressionTypeValueNone = CompressionTypeValue' "none"

{-# COMPLETE
  CompressionTypeValueGzip,
  CompressionTypeValueNone,
  CompressionTypeValue'
  #-}

instance Prelude.FromText CompressionTypeValue where
  parser = CompressionTypeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText CompressionTypeValue where
  toText (CompressionTypeValue' x) = x

instance Prelude.Hashable CompressionTypeValue

instance Prelude.NFData CompressionTypeValue

instance Prelude.ToByteString CompressionTypeValue

instance Prelude.ToQuery CompressionTypeValue

instance Prelude.ToHeader CompressionTypeValue

instance Prelude.ToJSON CompressionTypeValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CompressionTypeValue where
  parseJSON = Prelude.parseJSONText "CompressionTypeValue"
