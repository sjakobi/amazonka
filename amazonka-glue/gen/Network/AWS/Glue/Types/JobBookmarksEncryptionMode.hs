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
-- Module      : Network.AWS.Glue.Types.JobBookmarksEncryptionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JobBookmarksEncryptionMode
  ( JobBookmarksEncryptionMode
      ( ..,
        JobBookmarksEncryptionModeCSEKMS,
        JobBookmarksEncryptionModeDISABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobBookmarksEncryptionMode = JobBookmarksEncryptionMode'
  { fromJobBookmarksEncryptionMode ::
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

pattern JobBookmarksEncryptionModeCSEKMS :: JobBookmarksEncryptionMode
pattern JobBookmarksEncryptionModeCSEKMS = JobBookmarksEncryptionMode' "CSE-KMS"

pattern JobBookmarksEncryptionModeDISABLED :: JobBookmarksEncryptionMode
pattern JobBookmarksEncryptionModeDISABLED = JobBookmarksEncryptionMode' "DISABLED"

{-# COMPLETE
  JobBookmarksEncryptionModeCSEKMS,
  JobBookmarksEncryptionModeDISABLED,
  JobBookmarksEncryptionMode'
  #-}

instance Prelude.FromText JobBookmarksEncryptionMode where
  parser = JobBookmarksEncryptionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobBookmarksEncryptionMode where
  toText (JobBookmarksEncryptionMode' x) = x

instance Prelude.Hashable JobBookmarksEncryptionMode

instance Prelude.NFData JobBookmarksEncryptionMode

instance Prelude.ToByteString JobBookmarksEncryptionMode

instance Prelude.ToQuery JobBookmarksEncryptionMode

instance Prelude.ToHeader JobBookmarksEncryptionMode

instance Prelude.ToJSON JobBookmarksEncryptionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JobBookmarksEncryptionMode where
  parseJSON = Prelude.parseJSONText "JobBookmarksEncryptionMode"
