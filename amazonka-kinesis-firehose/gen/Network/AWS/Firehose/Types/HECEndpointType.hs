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
-- Module      : Network.AWS.Firehose.Types.HECEndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.HECEndpointType
  ( HECEndpointType
      ( ..,
        HECEndpointTypeEvent,
        HECEndpointTypeRaw
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HECEndpointType = HECEndpointType'
  { fromHECEndpointType ::
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

pattern HECEndpointTypeEvent :: HECEndpointType
pattern HECEndpointTypeEvent = HECEndpointType' "Event"

pattern HECEndpointTypeRaw :: HECEndpointType
pattern HECEndpointTypeRaw = HECEndpointType' "Raw"

{-# COMPLETE
  HECEndpointTypeEvent,
  HECEndpointTypeRaw,
  HECEndpointType'
  #-}

instance Prelude.FromText HECEndpointType where
  parser = HECEndpointType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HECEndpointType where
  toText (HECEndpointType' x) = x

instance Prelude.Hashable HECEndpointType

instance Prelude.NFData HECEndpointType

instance Prelude.ToByteString HECEndpointType

instance Prelude.ToQuery HECEndpointType

instance Prelude.ToHeader HECEndpointType

instance Prelude.ToJSON HECEndpointType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HECEndpointType where
  parseJSON = Prelude.parseJSONText "HECEndpointType"
