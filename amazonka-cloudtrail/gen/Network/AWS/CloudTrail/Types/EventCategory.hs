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
-- Module      : Network.AWS.CloudTrail.Types.EventCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.EventCategory
  ( EventCategory
      ( ..,
        EventCategoryInsight
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventCategory = EventCategory'
  { fromEventCategory ::
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

pattern EventCategoryInsight :: EventCategory
pattern EventCategoryInsight = EventCategory' "insight"

{-# COMPLETE
  EventCategoryInsight,
  EventCategory'
  #-}

instance Prelude.FromText EventCategory where
  parser = EventCategory' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventCategory where
  toText (EventCategory' x) = x

instance Prelude.Hashable EventCategory

instance Prelude.NFData EventCategory

instance Prelude.ToByteString EventCategory

instance Prelude.ToQuery EventCategory

instance Prelude.ToHeader EventCategory

instance Prelude.ToJSON EventCategory where
  toJSON = Prelude.toJSONText
