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
-- Module      : Network.AWS.GameLift.Types.BackfillMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.BackfillMode
  ( BackfillMode
      ( ..,
        BackfillModeAUTOMATIC,
        BackfillModeMANUAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackfillMode = BackfillMode'
  { fromBackfillMode ::
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

pattern BackfillModeAUTOMATIC :: BackfillMode
pattern BackfillModeAUTOMATIC = BackfillMode' "AUTOMATIC"

pattern BackfillModeMANUAL :: BackfillMode
pattern BackfillModeMANUAL = BackfillMode' "MANUAL"

{-# COMPLETE
  BackfillModeAUTOMATIC,
  BackfillModeMANUAL,
  BackfillMode'
  #-}

instance Prelude.FromText BackfillMode where
  parser = BackfillMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackfillMode where
  toText (BackfillMode' x) = x

instance Prelude.Hashable BackfillMode

instance Prelude.NFData BackfillMode

instance Prelude.ToByteString BackfillMode

instance Prelude.ToQuery BackfillMode

instance Prelude.ToHeader BackfillMode

instance Prelude.ToJSON BackfillMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BackfillMode where
  parseJSON = Prelude.parseJSONText "BackfillMode"
