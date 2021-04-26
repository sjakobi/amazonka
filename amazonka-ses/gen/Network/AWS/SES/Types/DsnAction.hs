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
-- Module      : Network.AWS.SES.Types.DsnAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.DsnAction
  ( DsnAction
      ( ..,
        DsnActionDelayed,
        DsnActionDelivered,
        DsnActionExpanded,
        DsnActionFailed,
        DsnActionRelayed
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DsnAction = DsnAction'
  { fromDsnAction ::
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

pattern DsnActionDelayed :: DsnAction
pattern DsnActionDelayed = DsnAction' "delayed"

pattern DsnActionDelivered :: DsnAction
pattern DsnActionDelivered = DsnAction' "delivered"

pattern DsnActionExpanded :: DsnAction
pattern DsnActionExpanded = DsnAction' "expanded"

pattern DsnActionFailed :: DsnAction
pattern DsnActionFailed = DsnAction' "failed"

pattern DsnActionRelayed :: DsnAction
pattern DsnActionRelayed = DsnAction' "relayed"

{-# COMPLETE
  DsnActionDelayed,
  DsnActionDelivered,
  DsnActionExpanded,
  DsnActionFailed,
  DsnActionRelayed,
  DsnAction'
  #-}

instance Prelude.FromText DsnAction where
  parser = DsnAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText DsnAction where
  toText (DsnAction' x) = x

instance Prelude.Hashable DsnAction

instance Prelude.NFData DsnAction

instance Prelude.ToByteString DsnAction

instance Prelude.ToQuery DsnAction

instance Prelude.ToHeader DsnAction
