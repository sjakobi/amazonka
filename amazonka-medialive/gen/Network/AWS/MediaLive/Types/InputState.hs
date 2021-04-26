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
-- Module      : Network.AWS.MediaLive.Types.InputState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputState
  ( InputState
      ( ..,
        InputStateATTACHED,
        InputStateCREATING,
        InputStateDELETED,
        InputStateDELETING,
        InputStateDETACHED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Placeholder documentation for InputState
newtype InputState = InputState'
  { fromInputState ::
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

pattern InputStateATTACHED :: InputState
pattern InputStateATTACHED = InputState' "ATTACHED"

pattern InputStateCREATING :: InputState
pattern InputStateCREATING = InputState' "CREATING"

pattern InputStateDELETED :: InputState
pattern InputStateDELETED = InputState' "DELETED"

pattern InputStateDELETING :: InputState
pattern InputStateDELETING = InputState' "DELETING"

pattern InputStateDETACHED :: InputState
pattern InputStateDETACHED = InputState' "DETACHED"

{-# COMPLETE
  InputStateATTACHED,
  InputStateCREATING,
  InputStateDELETED,
  InputStateDELETING,
  InputStateDETACHED,
  InputState'
  #-}

instance Prelude.FromText InputState where
  parser = InputState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputState where
  toText (InputState' x) = x

instance Prelude.Hashable InputState

instance Prelude.NFData InputState

instance Prelude.ToByteString InputState

instance Prelude.ToQuery InputState

instance Prelude.ToHeader InputState

instance Prelude.FromJSON InputState where
  parseJSON = Prelude.parseJSONText "InputState"
