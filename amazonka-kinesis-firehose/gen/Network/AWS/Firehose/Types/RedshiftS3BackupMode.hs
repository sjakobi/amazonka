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
-- Module      : Network.AWS.Firehose.Types.RedshiftS3BackupMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.RedshiftS3BackupMode
  ( RedshiftS3BackupMode
      ( ..,
        RedshiftS3BackupModeDisabled,
        RedshiftS3BackupModeEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RedshiftS3BackupMode = RedshiftS3BackupMode'
  { fromRedshiftS3BackupMode ::
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

pattern RedshiftS3BackupModeDisabled :: RedshiftS3BackupMode
pattern RedshiftS3BackupModeDisabled = RedshiftS3BackupMode' "Disabled"

pattern RedshiftS3BackupModeEnabled :: RedshiftS3BackupMode
pattern RedshiftS3BackupModeEnabled = RedshiftS3BackupMode' "Enabled"

{-# COMPLETE
  RedshiftS3BackupModeDisabled,
  RedshiftS3BackupModeEnabled,
  RedshiftS3BackupMode'
  #-}

instance Prelude.FromText RedshiftS3BackupMode where
  parser = RedshiftS3BackupMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText RedshiftS3BackupMode where
  toText (RedshiftS3BackupMode' x) = x

instance Prelude.Hashable RedshiftS3BackupMode

instance Prelude.NFData RedshiftS3BackupMode

instance Prelude.ToByteString RedshiftS3BackupMode

instance Prelude.ToQuery RedshiftS3BackupMode

instance Prelude.ToHeader RedshiftS3BackupMode

instance Prelude.ToJSON RedshiftS3BackupMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RedshiftS3BackupMode where
  parseJSON = Prelude.parseJSONText "RedshiftS3BackupMode"
