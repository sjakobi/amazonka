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
-- Module      : Network.AWS.GameLift.Types.GameSessionStatusReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameSessionStatusReason
  ( GameSessionStatusReason
      ( ..,
        GameSessionStatusReasonINTERRUPTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameSessionStatusReason = GameSessionStatusReason'
  { fromGameSessionStatusReason ::
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

pattern GameSessionStatusReasonINTERRUPTED :: GameSessionStatusReason
pattern GameSessionStatusReasonINTERRUPTED = GameSessionStatusReason' "INTERRUPTED"

{-# COMPLETE
  GameSessionStatusReasonINTERRUPTED,
  GameSessionStatusReason'
  #-}

instance Prelude.FromText GameSessionStatusReason where
  parser = GameSessionStatusReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameSessionStatusReason where
  toText (GameSessionStatusReason' x) = x

instance Prelude.Hashable GameSessionStatusReason

instance Prelude.NFData GameSessionStatusReason

instance Prelude.ToByteString GameSessionStatusReason

instance Prelude.ToQuery GameSessionStatusReason

instance Prelude.ToHeader GameSessionStatusReason

instance Prelude.FromJSON GameSessionStatusReason where
  parseJSON = Prelude.parseJSONText "GameSessionStatusReason"
