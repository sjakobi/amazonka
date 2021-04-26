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
-- Module      : Network.AWS.AWSHealth.Types.EventTypeCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventTypeCategory
  ( EventTypeCategory
      ( ..,
        EventTypeCategoryAccountNotification,
        EventTypeCategoryInvestigation,
        EventTypeCategoryIssue,
        EventTypeCategoryScheduledChange
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventTypeCategory = EventTypeCategory'
  { fromEventTypeCategory ::
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

pattern EventTypeCategoryAccountNotification :: EventTypeCategory
pattern EventTypeCategoryAccountNotification = EventTypeCategory' "accountNotification"

pattern EventTypeCategoryInvestigation :: EventTypeCategory
pattern EventTypeCategoryInvestigation = EventTypeCategory' "investigation"

pattern EventTypeCategoryIssue :: EventTypeCategory
pattern EventTypeCategoryIssue = EventTypeCategory' "issue"

pattern EventTypeCategoryScheduledChange :: EventTypeCategory
pattern EventTypeCategoryScheduledChange = EventTypeCategory' "scheduledChange"

{-# COMPLETE
  EventTypeCategoryAccountNotification,
  EventTypeCategoryInvestigation,
  EventTypeCategoryIssue,
  EventTypeCategoryScheduledChange,
  EventTypeCategory'
  #-}

instance Prelude.FromText EventTypeCategory where
  parser = EventTypeCategory' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventTypeCategory where
  toText (EventTypeCategory' x) = x

instance Prelude.Hashable EventTypeCategory

instance Prelude.NFData EventTypeCategory

instance Prelude.ToByteString EventTypeCategory

instance Prelude.ToQuery EventTypeCategory

instance Prelude.ToHeader EventTypeCategory

instance Prelude.ToJSON EventTypeCategory where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EventTypeCategory where
  parseJSON = Prelude.parseJSONText "EventTypeCategory"
