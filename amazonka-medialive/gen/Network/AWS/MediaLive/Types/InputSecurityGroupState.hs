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
-- Module      : Network.AWS.MediaLive.Types.InputSecurityGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSecurityGroupState
  ( InputSecurityGroupState
      ( ..,
        InputSecurityGroupStateDELETED,
        InputSecurityGroupStateIDLE,
        InputSecurityGroupStateINUSE,
        InputSecurityGroupStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Placeholder documentation for InputSecurityGroupState
newtype InputSecurityGroupState = InputSecurityGroupState'
  { fromInputSecurityGroupState ::
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

pattern InputSecurityGroupStateDELETED :: InputSecurityGroupState
pattern InputSecurityGroupStateDELETED = InputSecurityGroupState' "DELETED"

pattern InputSecurityGroupStateIDLE :: InputSecurityGroupState
pattern InputSecurityGroupStateIDLE = InputSecurityGroupState' "IDLE"

pattern InputSecurityGroupStateINUSE :: InputSecurityGroupState
pattern InputSecurityGroupStateINUSE = InputSecurityGroupState' "IN_USE"

pattern InputSecurityGroupStateUPDATING :: InputSecurityGroupState
pattern InputSecurityGroupStateUPDATING = InputSecurityGroupState' "UPDATING"

{-# COMPLETE
  InputSecurityGroupStateDELETED,
  InputSecurityGroupStateIDLE,
  InputSecurityGroupStateINUSE,
  InputSecurityGroupStateUPDATING,
  InputSecurityGroupState'
  #-}

instance Prelude.FromText InputSecurityGroupState where
  parser = InputSecurityGroupState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputSecurityGroupState where
  toText (InputSecurityGroupState' x) = x

instance Prelude.Hashable InputSecurityGroupState

instance Prelude.NFData InputSecurityGroupState

instance Prelude.ToByteString InputSecurityGroupState

instance Prelude.ToQuery InputSecurityGroupState

instance Prelude.ToHeader InputSecurityGroupState

instance Prelude.FromJSON InputSecurityGroupState where
  parseJSON = Prelude.parseJSONText "InputSecurityGroupState"
