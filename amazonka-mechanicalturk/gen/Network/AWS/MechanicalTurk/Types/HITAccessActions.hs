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
-- Module      : Network.AWS.MechanicalTurk.Types.HITAccessActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.HITAccessActions
  ( HITAccessActions
      ( ..,
        HITAccessActionsAccept,
        HITAccessActionsDiscoverPreviewAndAccept,
        HITAccessActionsPreviewAndAccept
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HITAccessActions = HITAccessActions'
  { fromHITAccessActions ::
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

pattern HITAccessActionsAccept :: HITAccessActions
pattern HITAccessActionsAccept = HITAccessActions' "Accept"

pattern HITAccessActionsDiscoverPreviewAndAccept :: HITAccessActions
pattern HITAccessActionsDiscoverPreviewAndAccept = HITAccessActions' "DiscoverPreviewAndAccept"

pattern HITAccessActionsPreviewAndAccept :: HITAccessActions
pattern HITAccessActionsPreviewAndAccept = HITAccessActions' "PreviewAndAccept"

{-# COMPLETE
  HITAccessActionsAccept,
  HITAccessActionsDiscoverPreviewAndAccept,
  HITAccessActionsPreviewAndAccept,
  HITAccessActions'
  #-}

instance Prelude.FromText HITAccessActions where
  parser = HITAccessActions' Prelude.<$> Prelude.takeText

instance Prelude.ToText HITAccessActions where
  toText (HITAccessActions' x) = x

instance Prelude.Hashable HITAccessActions

instance Prelude.NFData HITAccessActions

instance Prelude.ToByteString HITAccessActions

instance Prelude.ToQuery HITAccessActions

instance Prelude.ToHeader HITAccessActions

instance Prelude.ToJSON HITAccessActions where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HITAccessActions where
  parseJSON = Prelude.parseJSONText "HITAccessActions"
