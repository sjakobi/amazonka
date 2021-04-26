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
-- Module      : Network.AWS.AWSHealth.Types.EventAggregateField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventAggregateField
  ( EventAggregateField
      ( ..,
        EventAggregateFieldEventTypeCategory
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventAggregateField = EventAggregateField'
  { fromEventAggregateField ::
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

pattern EventAggregateFieldEventTypeCategory :: EventAggregateField
pattern EventAggregateFieldEventTypeCategory = EventAggregateField' "eventTypeCategory"

{-# COMPLETE
  EventAggregateFieldEventTypeCategory,
  EventAggregateField'
  #-}

instance Prelude.FromText EventAggregateField where
  parser = EventAggregateField' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventAggregateField where
  toText (EventAggregateField' x) = x

instance Prelude.Hashable EventAggregateField

instance Prelude.NFData EventAggregateField

instance Prelude.ToByteString EventAggregateField

instance Prelude.ToQuery EventAggregateField

instance Prelude.ToHeader EventAggregateField

instance Prelude.ToJSON EventAggregateField where
  toJSON = Prelude.toJSONText
