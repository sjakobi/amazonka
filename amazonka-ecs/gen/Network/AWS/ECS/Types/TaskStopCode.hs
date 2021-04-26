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
-- Module      : Network.AWS.ECS.Types.TaskStopCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskStopCode
  ( TaskStopCode
      ( ..,
        TaskStopCodeEssentialContainerExited,
        TaskStopCodeTaskFailedToStart,
        TaskStopCodeUserInitiated
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskStopCode = TaskStopCode'
  { fromTaskStopCode ::
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

pattern TaskStopCodeEssentialContainerExited :: TaskStopCode
pattern TaskStopCodeEssentialContainerExited = TaskStopCode' "EssentialContainerExited"

pattern TaskStopCodeTaskFailedToStart :: TaskStopCode
pattern TaskStopCodeTaskFailedToStart = TaskStopCode' "TaskFailedToStart"

pattern TaskStopCodeUserInitiated :: TaskStopCode
pattern TaskStopCodeUserInitiated = TaskStopCode' "UserInitiated"

{-# COMPLETE
  TaskStopCodeEssentialContainerExited,
  TaskStopCodeTaskFailedToStart,
  TaskStopCodeUserInitiated,
  TaskStopCode'
  #-}

instance Prelude.FromText TaskStopCode where
  parser = TaskStopCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskStopCode where
  toText (TaskStopCode' x) = x

instance Prelude.Hashable TaskStopCode

instance Prelude.NFData TaskStopCode

instance Prelude.ToByteString TaskStopCode

instance Prelude.ToQuery TaskStopCode

instance Prelude.ToHeader TaskStopCode

instance Prelude.FromJSON TaskStopCode where
  parseJSON = Prelude.parseJSONText "TaskStopCode"
