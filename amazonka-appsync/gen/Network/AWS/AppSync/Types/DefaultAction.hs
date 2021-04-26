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
-- Module      : Network.AWS.AppSync.Types.DefaultAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.DefaultAction
  ( DefaultAction
      ( ..,
        DefaultActionALLOW,
        DefaultActionDENY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DefaultAction = DefaultAction'
  { fromDefaultAction ::
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

pattern DefaultActionALLOW :: DefaultAction
pattern DefaultActionALLOW = DefaultAction' "ALLOW"

pattern DefaultActionDENY :: DefaultAction
pattern DefaultActionDENY = DefaultAction' "DENY"

{-# COMPLETE
  DefaultActionALLOW,
  DefaultActionDENY,
  DefaultAction'
  #-}

instance Prelude.FromText DefaultAction where
  parser = DefaultAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText DefaultAction where
  toText (DefaultAction' x) = x

instance Prelude.Hashable DefaultAction

instance Prelude.NFData DefaultAction

instance Prelude.ToByteString DefaultAction

instance Prelude.ToQuery DefaultAction

instance Prelude.ToHeader DefaultAction

instance Prelude.ToJSON DefaultAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DefaultAction where
  parseJSON = Prelude.parseJSONText "DefaultAction"
