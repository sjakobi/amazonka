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
-- Module      : Network.AWS.GameLift.Types.GameServerGroupAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerGroupAction
  ( GameServerGroupAction
      ( ..,
        GameServerGroupActionREPLACEINSTANCETYPES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerGroupAction = GameServerGroupAction'
  { fromGameServerGroupAction ::
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

pattern GameServerGroupActionREPLACEINSTANCETYPES :: GameServerGroupAction
pattern GameServerGroupActionREPLACEINSTANCETYPES = GameServerGroupAction' "REPLACE_INSTANCE_TYPES"

{-# COMPLETE
  GameServerGroupActionREPLACEINSTANCETYPES,
  GameServerGroupAction'
  #-}

instance Prelude.FromText GameServerGroupAction where
  parser = GameServerGroupAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerGroupAction where
  toText (GameServerGroupAction' x) = x

instance Prelude.Hashable GameServerGroupAction

instance Prelude.NFData GameServerGroupAction

instance Prelude.ToByteString GameServerGroupAction

instance Prelude.ToQuery GameServerGroupAction

instance Prelude.ToHeader GameServerGroupAction

instance Prelude.ToJSON GameServerGroupAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GameServerGroupAction where
  parseJSON = Prelude.parseJSONText "GameServerGroupAction"
