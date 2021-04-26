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
-- Module      : Network.AWS.Translate.Types.ParallelDataStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.ParallelDataStatus
  ( ParallelDataStatus
      ( ..,
        ParallelDataStatusACTIVE,
        ParallelDataStatusCREATING,
        ParallelDataStatusDELETING,
        ParallelDataStatusFAILED,
        ParallelDataStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParallelDataStatus = ParallelDataStatus'
  { fromParallelDataStatus ::
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

pattern ParallelDataStatusACTIVE :: ParallelDataStatus
pattern ParallelDataStatusACTIVE = ParallelDataStatus' "ACTIVE"

pattern ParallelDataStatusCREATING :: ParallelDataStatus
pattern ParallelDataStatusCREATING = ParallelDataStatus' "CREATING"

pattern ParallelDataStatusDELETING :: ParallelDataStatus
pattern ParallelDataStatusDELETING = ParallelDataStatus' "DELETING"

pattern ParallelDataStatusFAILED :: ParallelDataStatus
pattern ParallelDataStatusFAILED = ParallelDataStatus' "FAILED"

pattern ParallelDataStatusUPDATING :: ParallelDataStatus
pattern ParallelDataStatusUPDATING = ParallelDataStatus' "UPDATING"

{-# COMPLETE
  ParallelDataStatusACTIVE,
  ParallelDataStatusCREATING,
  ParallelDataStatusDELETING,
  ParallelDataStatusFAILED,
  ParallelDataStatusUPDATING,
  ParallelDataStatus'
  #-}

instance Prelude.FromText ParallelDataStatus where
  parser = ParallelDataStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParallelDataStatus where
  toText (ParallelDataStatus' x) = x

instance Prelude.Hashable ParallelDataStatus

instance Prelude.NFData ParallelDataStatus

instance Prelude.ToByteString ParallelDataStatus

instance Prelude.ToQuery ParallelDataStatus

instance Prelude.ToHeader ParallelDataStatus

instance Prelude.FromJSON ParallelDataStatus where
  parseJSON = Prelude.parseJSONText "ParallelDataStatus"
