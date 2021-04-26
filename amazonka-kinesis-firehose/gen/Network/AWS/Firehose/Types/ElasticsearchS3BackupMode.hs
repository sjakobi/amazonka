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
-- Module      : Network.AWS.Firehose.Types.ElasticsearchS3BackupMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ElasticsearchS3BackupMode
  ( ElasticsearchS3BackupMode
      ( ..,
        ElasticsearchS3BackupModeAllDocuments,
        ElasticsearchS3BackupModeFailedDocumentsOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ElasticsearchS3BackupMode = ElasticsearchS3BackupMode'
  { fromElasticsearchS3BackupMode ::
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

pattern ElasticsearchS3BackupModeAllDocuments :: ElasticsearchS3BackupMode
pattern ElasticsearchS3BackupModeAllDocuments = ElasticsearchS3BackupMode' "AllDocuments"

pattern ElasticsearchS3BackupModeFailedDocumentsOnly :: ElasticsearchS3BackupMode
pattern ElasticsearchS3BackupModeFailedDocumentsOnly = ElasticsearchS3BackupMode' "FailedDocumentsOnly"

{-# COMPLETE
  ElasticsearchS3BackupModeAllDocuments,
  ElasticsearchS3BackupModeFailedDocumentsOnly,
  ElasticsearchS3BackupMode'
  #-}

instance Prelude.FromText ElasticsearchS3BackupMode where
  parser = ElasticsearchS3BackupMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ElasticsearchS3BackupMode where
  toText (ElasticsearchS3BackupMode' x) = x

instance Prelude.Hashable ElasticsearchS3BackupMode

instance Prelude.NFData ElasticsearchS3BackupMode

instance Prelude.ToByteString ElasticsearchS3BackupMode

instance Prelude.ToQuery ElasticsearchS3BackupMode

instance Prelude.ToHeader ElasticsearchS3BackupMode

instance Prelude.ToJSON ElasticsearchS3BackupMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ElasticsearchS3BackupMode where
  parseJSON = Prelude.parseJSONText "ElasticsearchS3BackupMode"
