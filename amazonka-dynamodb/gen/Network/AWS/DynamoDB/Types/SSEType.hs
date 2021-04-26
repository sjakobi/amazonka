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
-- Module      : Network.AWS.DynamoDB.Types.SSEType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SSEType
  ( SSEType
      ( ..,
        SSETypeAES256,
        SSETypeKMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SSEType = SSEType'
  { fromSSEType ::
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

pattern SSETypeAES256 :: SSEType
pattern SSETypeAES256 = SSEType' "AES256"

pattern SSETypeKMS :: SSEType
pattern SSETypeKMS = SSEType' "KMS"

{-# COMPLETE
  SSETypeAES256,
  SSETypeKMS,
  SSEType'
  #-}

instance Prelude.FromText SSEType where
  parser = SSEType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SSEType where
  toText (SSEType' x) = x

instance Prelude.Hashable SSEType

instance Prelude.NFData SSEType

instance Prelude.ToByteString SSEType

instance Prelude.ToQuery SSEType

instance Prelude.ToHeader SSEType

instance Prelude.ToJSON SSEType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SSEType where
  parseJSON = Prelude.parseJSONText "SSEType"
