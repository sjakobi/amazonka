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
-- Module      : Network.AWS.Pinpoint.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Action
  ( Action
      ( ..,
        ActionDEEPLINK,
        ActionOPENAPP,
        ActionURL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Action = Action' {fromAction :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ActionDEEPLINK :: Action
pattern ActionDEEPLINK = Action' "DEEP_LINK"

pattern ActionOPENAPP :: Action
pattern ActionOPENAPP = Action' "OPEN_APP"

pattern ActionURL :: Action
pattern ActionURL = Action' "URL"

{-# COMPLETE
  ActionDEEPLINK,
  ActionOPENAPP,
  ActionURL,
  Action'
  #-}

instance Prelude.FromText Action where
  parser = Action' Prelude.<$> Prelude.takeText

instance Prelude.ToText Action where
  toText (Action' x) = x

instance Prelude.Hashable Action

instance Prelude.NFData Action

instance Prelude.ToByteString Action

instance Prelude.ToQuery Action

instance Prelude.ToHeader Action

instance Prelude.ToJSON Action where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Action where
  parseJSON = Prelude.parseJSONText "Action"
