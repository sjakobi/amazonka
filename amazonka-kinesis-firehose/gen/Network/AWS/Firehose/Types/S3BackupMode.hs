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
-- Module      : Network.AWS.Firehose.Types.S3BackupMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.S3BackupMode
  ( S3BackupMode
      ( ..,
        S3BackupModeDisabled,
        S3BackupModeEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype S3BackupMode = S3BackupMode'
  { fromS3BackupMode ::
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

pattern S3BackupModeDisabled :: S3BackupMode
pattern S3BackupModeDisabled = S3BackupMode' "Disabled"

pattern S3BackupModeEnabled :: S3BackupMode
pattern S3BackupModeEnabled = S3BackupMode' "Enabled"

{-# COMPLETE
  S3BackupModeDisabled,
  S3BackupModeEnabled,
  S3BackupMode'
  #-}

instance Prelude.FromText S3BackupMode where
  parser = S3BackupMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText S3BackupMode where
  toText (S3BackupMode' x) = x

instance Prelude.Hashable S3BackupMode

instance Prelude.NFData S3BackupMode

instance Prelude.ToByteString S3BackupMode

instance Prelude.ToQuery S3BackupMode

instance Prelude.ToHeader S3BackupMode

instance Prelude.ToJSON S3BackupMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON S3BackupMode where
  parseJSON = Prelude.parseJSONText "S3BackupMode"
