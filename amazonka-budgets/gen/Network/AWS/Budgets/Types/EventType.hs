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
-- Module      : Network.AWS.Budgets.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.EventType
  ( EventType
      ( ..,
        EventTypeCREATEACTION,
        EventTypeDELETEACTION,
        EventTypeEXECUTEACTION,
        EventTypeSYSTEM,
        EventTypeUPDATEACTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventType = EventType'
  { fromEventType ::
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

pattern EventTypeCREATEACTION :: EventType
pattern EventTypeCREATEACTION = EventType' "CREATE_ACTION"

pattern EventTypeDELETEACTION :: EventType
pattern EventTypeDELETEACTION = EventType' "DELETE_ACTION"

pattern EventTypeEXECUTEACTION :: EventType
pattern EventTypeEXECUTEACTION = EventType' "EXECUTE_ACTION"

pattern EventTypeSYSTEM :: EventType
pattern EventTypeSYSTEM = EventType' "SYSTEM"

pattern EventTypeUPDATEACTION :: EventType
pattern EventTypeUPDATEACTION = EventType' "UPDATE_ACTION"

{-# COMPLETE
  EventTypeCREATEACTION,
  EventTypeDELETEACTION,
  EventTypeEXECUTEACTION,
  EventTypeSYSTEM,
  EventTypeUPDATEACTION,
  EventType'
  #-}

instance Prelude.FromText EventType where
  parser = EventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventType where
  toText (EventType' x) = x

instance Prelude.Hashable EventType

instance Prelude.NFData EventType

instance Prelude.ToByteString EventType

instance Prelude.ToQuery EventType

instance Prelude.ToHeader EventType

instance Prelude.FromJSON EventType where
  parseJSON = Prelude.parseJSONText "EventType"
