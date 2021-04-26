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
-- Module      : Network.AWS.DirectoryService.Types.TopicStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TopicStatus
  ( TopicStatus
      ( ..,
        TopicStatusDeleted,
        TopicStatusFailed,
        TopicStatusRegistered,
        TopicStatusTopicNotFound
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TopicStatus = TopicStatus'
  { fromTopicStatus ::
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

pattern TopicStatusDeleted :: TopicStatus
pattern TopicStatusDeleted = TopicStatus' "Deleted"

pattern TopicStatusFailed :: TopicStatus
pattern TopicStatusFailed = TopicStatus' "Failed"

pattern TopicStatusRegistered :: TopicStatus
pattern TopicStatusRegistered = TopicStatus' "Registered"

pattern TopicStatusTopicNotFound :: TopicStatus
pattern TopicStatusTopicNotFound = TopicStatus' "Topic not found"

{-# COMPLETE
  TopicStatusDeleted,
  TopicStatusFailed,
  TopicStatusRegistered,
  TopicStatusTopicNotFound,
  TopicStatus'
  #-}

instance Prelude.FromText TopicStatus where
  parser = TopicStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TopicStatus where
  toText (TopicStatus' x) = x

instance Prelude.Hashable TopicStatus

instance Prelude.NFData TopicStatus

instance Prelude.ToByteString TopicStatus

instance Prelude.ToQuery TopicStatus

instance Prelude.ToHeader TopicStatus

instance Prelude.FromJSON TopicStatus where
  parseJSON = Prelude.parseJSONText "TopicStatus"
