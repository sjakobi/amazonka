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
-- Module      : Network.AWS.DirectoryService.Types.TrustDirection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TrustDirection
  ( TrustDirection
      ( ..,
        TrustDirectionOneWayIncoming,
        TrustDirectionOneWayOutgoing,
        TrustDirectionTwoWay
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrustDirection = TrustDirection'
  { fromTrustDirection ::
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

pattern TrustDirectionOneWayIncoming :: TrustDirection
pattern TrustDirectionOneWayIncoming = TrustDirection' "One-Way: Incoming"

pattern TrustDirectionOneWayOutgoing :: TrustDirection
pattern TrustDirectionOneWayOutgoing = TrustDirection' "One-Way: Outgoing"

pattern TrustDirectionTwoWay :: TrustDirection
pattern TrustDirectionTwoWay = TrustDirection' "Two-Way"

{-# COMPLETE
  TrustDirectionOneWayIncoming,
  TrustDirectionOneWayOutgoing,
  TrustDirectionTwoWay,
  TrustDirection'
  #-}

instance Prelude.FromText TrustDirection where
  parser = TrustDirection' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrustDirection where
  toText (TrustDirection' x) = x

instance Prelude.Hashable TrustDirection

instance Prelude.NFData TrustDirection

instance Prelude.ToByteString TrustDirection

instance Prelude.ToQuery TrustDirection

instance Prelude.ToHeader TrustDirection

instance Prelude.ToJSON TrustDirection where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrustDirection where
  parseJSON = Prelude.parseJSONText "TrustDirection"
