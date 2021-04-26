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
-- Module      : Network.AWS.SageMaker.Types.ObjectiveStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ObjectiveStatus
  ( ObjectiveStatus
      ( ..,
        ObjectiveStatusFailed,
        ObjectiveStatusPending,
        ObjectiveStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ObjectiveStatus = ObjectiveStatus'
  { fromObjectiveStatus ::
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

pattern ObjectiveStatusFailed :: ObjectiveStatus
pattern ObjectiveStatusFailed = ObjectiveStatus' "Failed"

pattern ObjectiveStatusPending :: ObjectiveStatus
pattern ObjectiveStatusPending = ObjectiveStatus' "Pending"

pattern ObjectiveStatusSucceeded :: ObjectiveStatus
pattern ObjectiveStatusSucceeded = ObjectiveStatus' "Succeeded"

{-# COMPLETE
  ObjectiveStatusFailed,
  ObjectiveStatusPending,
  ObjectiveStatusSucceeded,
  ObjectiveStatus'
  #-}

instance Prelude.FromText ObjectiveStatus where
  parser = ObjectiveStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectiveStatus where
  toText (ObjectiveStatus' x) = x

instance Prelude.Hashable ObjectiveStatus

instance Prelude.NFData ObjectiveStatus

instance Prelude.ToByteString ObjectiveStatus

instance Prelude.ToQuery ObjectiveStatus

instance Prelude.ToHeader ObjectiveStatus

instance Prelude.FromJSON ObjectiveStatus where
  parseJSON = Prelude.parseJSONText "ObjectiveStatus"
