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
-- Module      : Network.AWS.Firehose.Types.SplunkS3BackupMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.SplunkS3BackupMode
  ( SplunkS3BackupMode
      ( ..,
        SplunkS3BackupModeAllEvents,
        SplunkS3BackupModeFailedEventsOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SplunkS3BackupMode = SplunkS3BackupMode'
  { fromSplunkS3BackupMode ::
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

pattern SplunkS3BackupModeAllEvents :: SplunkS3BackupMode
pattern SplunkS3BackupModeAllEvents = SplunkS3BackupMode' "AllEvents"

pattern SplunkS3BackupModeFailedEventsOnly :: SplunkS3BackupMode
pattern SplunkS3BackupModeFailedEventsOnly = SplunkS3BackupMode' "FailedEventsOnly"

{-# COMPLETE
  SplunkS3BackupModeAllEvents,
  SplunkS3BackupModeFailedEventsOnly,
  SplunkS3BackupMode'
  #-}

instance Prelude.FromText SplunkS3BackupMode where
  parser = SplunkS3BackupMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText SplunkS3BackupMode where
  toText (SplunkS3BackupMode' x) = x

instance Prelude.Hashable SplunkS3BackupMode

instance Prelude.NFData SplunkS3BackupMode

instance Prelude.ToByteString SplunkS3BackupMode

instance Prelude.ToQuery SplunkS3BackupMode

instance Prelude.ToHeader SplunkS3BackupMode

instance Prelude.ToJSON SplunkS3BackupMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SplunkS3BackupMode where
  parseJSON = Prelude.parseJSONText "SplunkS3BackupMode"
