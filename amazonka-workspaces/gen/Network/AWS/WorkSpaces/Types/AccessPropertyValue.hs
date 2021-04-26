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
-- Module      : Network.AWS.WorkSpaces.Types.AccessPropertyValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.AccessPropertyValue
  ( AccessPropertyValue
      ( ..,
        AccessPropertyValueALLOW,
        AccessPropertyValueDENY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessPropertyValue = AccessPropertyValue'
  { fromAccessPropertyValue ::
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

pattern AccessPropertyValueALLOW :: AccessPropertyValue
pattern AccessPropertyValueALLOW = AccessPropertyValue' "ALLOW"

pattern AccessPropertyValueDENY :: AccessPropertyValue
pattern AccessPropertyValueDENY = AccessPropertyValue' "DENY"

{-# COMPLETE
  AccessPropertyValueALLOW,
  AccessPropertyValueDENY,
  AccessPropertyValue'
  #-}

instance Prelude.FromText AccessPropertyValue where
  parser = AccessPropertyValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessPropertyValue where
  toText (AccessPropertyValue' x) = x

instance Prelude.Hashable AccessPropertyValue

instance Prelude.NFData AccessPropertyValue

instance Prelude.ToByteString AccessPropertyValue

instance Prelude.ToQuery AccessPropertyValue

instance Prelude.ToHeader AccessPropertyValue

instance Prelude.ToJSON AccessPropertyValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AccessPropertyValue where
  parseJSON = Prelude.parseJSONText "AccessPropertyValue"
