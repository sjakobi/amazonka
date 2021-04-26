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
-- Module      : Network.AWS.S3.Types.ServerSideEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ServerSideEncryption
  ( ServerSideEncryption
      ( ..,
        ServerSideEncryptionAES256,
        ServerSideEncryptionAwsKms
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ServerSideEncryption = ServerSideEncryption'
  { fromServerSideEncryption ::
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

pattern ServerSideEncryptionAES256 :: ServerSideEncryption
pattern ServerSideEncryptionAES256 = ServerSideEncryption' "AES256"

pattern ServerSideEncryptionAwsKms :: ServerSideEncryption
pattern ServerSideEncryptionAwsKms = ServerSideEncryption' "aws:kms"

{-# COMPLETE
  ServerSideEncryptionAES256,
  ServerSideEncryptionAwsKms,
  ServerSideEncryption'
  #-}

instance Prelude.FromText ServerSideEncryption where
  parser = ServerSideEncryption' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServerSideEncryption where
  toText (ServerSideEncryption' x) = x

instance Prelude.Hashable ServerSideEncryption

instance Prelude.NFData ServerSideEncryption

instance Prelude.ToByteString ServerSideEncryption

instance Prelude.ToQuery ServerSideEncryption

instance Prelude.ToHeader ServerSideEncryption

instance Prelude.FromXML ServerSideEncryption where
  parseXML = Prelude.parseXMLText "ServerSideEncryption"

instance Prelude.ToXML ServerSideEncryption where
  toXML = Prelude.toXMLText
