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
-- Module      : Network.AWS.CloudDirectory.Types.DirectoryState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.DirectoryState
  ( DirectoryState
      ( ..,
        DirectoryStateDELETED,
        DirectoryStateDISABLED,
        DirectoryStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectoryState = DirectoryState'
  { fromDirectoryState ::
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

pattern DirectoryStateDELETED :: DirectoryState
pattern DirectoryStateDELETED = DirectoryState' "DELETED"

pattern DirectoryStateDISABLED :: DirectoryState
pattern DirectoryStateDISABLED = DirectoryState' "DISABLED"

pattern DirectoryStateENABLED :: DirectoryState
pattern DirectoryStateENABLED = DirectoryState' "ENABLED"

{-# COMPLETE
  DirectoryStateDELETED,
  DirectoryStateDISABLED,
  DirectoryStateENABLED,
  DirectoryState'
  #-}

instance Prelude.FromText DirectoryState where
  parser = DirectoryState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectoryState where
  toText (DirectoryState' x) = x

instance Prelude.Hashable DirectoryState

instance Prelude.NFData DirectoryState

instance Prelude.ToByteString DirectoryState

instance Prelude.ToQuery DirectoryState

instance Prelude.ToHeader DirectoryState

instance Prelude.ToJSON DirectoryState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DirectoryState where
  parseJSON = Prelude.parseJSONText "DirectoryState"
