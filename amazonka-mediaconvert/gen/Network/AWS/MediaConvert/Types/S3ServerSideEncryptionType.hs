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
-- Module      : Network.AWS.MediaConvert.Types.S3ServerSideEncryptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.S3ServerSideEncryptionType
  ( S3ServerSideEncryptionType
      ( ..,
        S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONKMS,
        S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify how you want your data keys managed. AWS uses data keys to
-- encrypt your content. AWS also encrypts the data keys themselves, using
-- a customer master key (CMK), and then stores the encrypted data keys
-- alongside your encrypted content. Use this setting to specify which AWS
-- service manages the CMK. For simplest set up, choose Amazon S3
-- (SERVER_SIDE_ENCRYPTION_S3). If you want your master key to be managed
-- by AWS Key Management Service (KMS), choose AWS KMS
-- (SERVER_SIDE_ENCRYPTION_KMS). By default, when you choose AWS KMS, KMS
-- uses the AWS managed customer master key (CMK) associated with Amazon S3
-- to encrypt your data keys. You can optionally choose to specify a
-- different, customer managed CMK. Do so by specifying the Amazon Resource
-- Name (ARN) of the key for the setting KMS ARN (kmsKeyArn).
newtype S3ServerSideEncryptionType = S3ServerSideEncryptionType'
  { fromS3ServerSideEncryptionType ::
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

pattern S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONKMS :: S3ServerSideEncryptionType
pattern S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONKMS = S3ServerSideEncryptionType' "SERVER_SIDE_ENCRYPTION_KMS"

pattern S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONS3 :: S3ServerSideEncryptionType
pattern S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONS3 = S3ServerSideEncryptionType' "SERVER_SIDE_ENCRYPTION_S3"

{-# COMPLETE
  S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONKMS,
  S3ServerSideEncryptionTypeSERVERSIDEENCRYPTIONS3,
  S3ServerSideEncryptionType'
  #-}

instance Prelude.FromText S3ServerSideEncryptionType where
  parser = S3ServerSideEncryptionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText S3ServerSideEncryptionType where
  toText (S3ServerSideEncryptionType' x) = x

instance Prelude.Hashable S3ServerSideEncryptionType

instance Prelude.NFData S3ServerSideEncryptionType

instance Prelude.ToByteString S3ServerSideEncryptionType

instance Prelude.ToQuery S3ServerSideEncryptionType

instance Prelude.ToHeader S3ServerSideEncryptionType

instance Prelude.ToJSON S3ServerSideEncryptionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON S3ServerSideEncryptionType where
  parseJSON = Prelude.parseJSONText "S3ServerSideEncryptionType"
