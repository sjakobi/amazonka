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
-- Module      : Network.AWS.Batch.Types.JQState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JQState
  ( JQState
      ( ..,
        JQStateDISABLED,
        JQStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JQState = JQState'
  { fromJQState ::
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

pattern JQStateDISABLED :: JQState
pattern JQStateDISABLED = JQState' "DISABLED"

pattern JQStateENABLED :: JQState
pattern JQStateENABLED = JQState' "ENABLED"

{-# COMPLETE
  JQStateDISABLED,
  JQStateENABLED,
  JQState'
  #-}

instance Prelude.FromText JQState where
  parser = JQState' Prelude.<$> Prelude.takeText

instance Prelude.ToText JQState where
  toText (JQState' x) = x

instance Prelude.Hashable JQState

instance Prelude.NFData JQState

instance Prelude.ToByteString JQState

instance Prelude.ToQuery JQState

instance Prelude.ToHeader JQState

instance Prelude.ToJSON JQState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JQState where
  parseJSON = Prelude.parseJSONText "JQState"
