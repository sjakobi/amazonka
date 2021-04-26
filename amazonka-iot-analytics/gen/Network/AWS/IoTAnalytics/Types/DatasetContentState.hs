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
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetContentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetContentState
  ( DatasetContentState
      ( ..,
        DatasetContentStateCREATING,
        DatasetContentStateFAILED,
        DatasetContentStateSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DatasetContentState = DatasetContentState'
  { fromDatasetContentState ::
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

pattern DatasetContentStateCREATING :: DatasetContentState
pattern DatasetContentStateCREATING = DatasetContentState' "CREATING"

pattern DatasetContentStateFAILED :: DatasetContentState
pattern DatasetContentStateFAILED = DatasetContentState' "FAILED"

pattern DatasetContentStateSUCCEEDED :: DatasetContentState
pattern DatasetContentStateSUCCEEDED = DatasetContentState' "SUCCEEDED"

{-# COMPLETE
  DatasetContentStateCREATING,
  DatasetContentStateFAILED,
  DatasetContentStateSUCCEEDED,
  DatasetContentState'
  #-}

instance Prelude.FromText DatasetContentState where
  parser = DatasetContentState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DatasetContentState where
  toText (DatasetContentState' x) = x

instance Prelude.Hashable DatasetContentState

instance Prelude.NFData DatasetContentState

instance Prelude.ToByteString DatasetContentState

instance Prelude.ToQuery DatasetContentState

instance Prelude.ToHeader DatasetContentState

instance Prelude.FromJSON DatasetContentState where
  parseJSON = Prelude.parseJSONText "DatasetContentState"
