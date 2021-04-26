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
-- Module      : Network.AWS.DynamoDB.Types.S3SseAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.S3SseAlgorithm
  ( S3SseAlgorithm
      ( ..,
        S3SseAlgorithmAES256,
        S3SseAlgorithmKMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype S3SseAlgorithm = S3SseAlgorithm'
  { fromS3SseAlgorithm ::
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

pattern S3SseAlgorithmAES256 :: S3SseAlgorithm
pattern S3SseAlgorithmAES256 = S3SseAlgorithm' "AES256"

pattern S3SseAlgorithmKMS :: S3SseAlgorithm
pattern S3SseAlgorithmKMS = S3SseAlgorithm' "KMS"

{-# COMPLETE
  S3SseAlgorithmAES256,
  S3SseAlgorithmKMS,
  S3SseAlgorithm'
  #-}

instance Prelude.FromText S3SseAlgorithm where
  parser = S3SseAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText S3SseAlgorithm where
  toText (S3SseAlgorithm' x) = x

instance Prelude.Hashable S3SseAlgorithm

instance Prelude.NFData S3SseAlgorithm

instance Prelude.ToByteString S3SseAlgorithm

instance Prelude.ToQuery S3SseAlgorithm

instance Prelude.ToHeader S3SseAlgorithm

instance Prelude.ToJSON S3SseAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON S3SseAlgorithm where
  parseJSON = Prelude.parseJSONText "S3SseAlgorithm"
