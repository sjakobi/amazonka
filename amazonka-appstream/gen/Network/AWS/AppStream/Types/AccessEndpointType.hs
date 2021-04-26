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
-- Module      : Network.AWS.AppStream.Types.AccessEndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.AccessEndpointType
  ( AccessEndpointType
      ( ..,
        AccessEndpointTypeSTREAMING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessEndpointType = AccessEndpointType'
  { fromAccessEndpointType ::
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

pattern AccessEndpointTypeSTREAMING :: AccessEndpointType
pattern AccessEndpointTypeSTREAMING = AccessEndpointType' "STREAMING"

{-# COMPLETE
  AccessEndpointTypeSTREAMING,
  AccessEndpointType'
  #-}

instance Prelude.FromText AccessEndpointType where
  parser = AccessEndpointType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessEndpointType where
  toText (AccessEndpointType' x) = x

instance Prelude.Hashable AccessEndpointType

instance Prelude.NFData AccessEndpointType

instance Prelude.ToByteString AccessEndpointType

instance Prelude.ToQuery AccessEndpointType

instance Prelude.ToHeader AccessEndpointType

instance Prelude.ToJSON AccessEndpointType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AccessEndpointType where
  parseJSON = Prelude.parseJSONText "AccessEndpointType"
