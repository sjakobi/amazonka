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
-- Module      : Network.AWS.CloudWatchEvents.Types.ApiDestinationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ApiDestinationState
  ( ApiDestinationState
      ( ..,
        ApiDestinationStateACTIVE,
        ApiDestinationStateINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApiDestinationState = ApiDestinationState'
  { fromApiDestinationState ::
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

pattern ApiDestinationStateACTIVE :: ApiDestinationState
pattern ApiDestinationStateACTIVE = ApiDestinationState' "ACTIVE"

pattern ApiDestinationStateINACTIVE :: ApiDestinationState
pattern ApiDestinationStateINACTIVE = ApiDestinationState' "INACTIVE"

{-# COMPLETE
  ApiDestinationStateACTIVE,
  ApiDestinationStateINACTIVE,
  ApiDestinationState'
  #-}

instance Prelude.FromText ApiDestinationState where
  parser = ApiDestinationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApiDestinationState where
  toText (ApiDestinationState' x) = x

instance Prelude.Hashable ApiDestinationState

instance Prelude.NFData ApiDestinationState

instance Prelude.ToByteString ApiDestinationState

instance Prelude.ToQuery ApiDestinationState

instance Prelude.ToHeader ApiDestinationState

instance Prelude.FromJSON ApiDestinationState where
  parseJSON = Prelude.parseJSONText "ApiDestinationState"
