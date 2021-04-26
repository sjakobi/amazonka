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
-- Module      : Network.AWS.Lightsail.Types.AccessDirection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AccessDirection
  ( AccessDirection
      ( ..,
        AccessDirectionInbound,
        AccessDirectionOutbound
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessDirection = AccessDirection'
  { fromAccessDirection ::
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

pattern AccessDirectionInbound :: AccessDirection
pattern AccessDirectionInbound = AccessDirection' "inbound"

pattern AccessDirectionOutbound :: AccessDirection
pattern AccessDirectionOutbound = AccessDirection' "outbound"

{-# COMPLETE
  AccessDirectionInbound,
  AccessDirectionOutbound,
  AccessDirection'
  #-}

instance Prelude.FromText AccessDirection where
  parser = AccessDirection' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessDirection where
  toText (AccessDirection' x) = x

instance Prelude.Hashable AccessDirection

instance Prelude.NFData AccessDirection

instance Prelude.ToByteString AccessDirection

instance Prelude.ToQuery AccessDirection

instance Prelude.ToHeader AccessDirection

instance Prelude.FromJSON AccessDirection where
  parseJSON = Prelude.parseJSONText "AccessDirection"
