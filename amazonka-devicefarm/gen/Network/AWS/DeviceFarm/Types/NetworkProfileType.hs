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
-- Module      : Network.AWS.DeviceFarm.Types.NetworkProfileType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.NetworkProfileType
  ( NetworkProfileType
      ( ..,
        NetworkProfileTypeCURATED,
        NetworkProfileTypePRIVATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NetworkProfileType = NetworkProfileType'
  { fromNetworkProfileType ::
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

pattern NetworkProfileTypeCURATED :: NetworkProfileType
pattern NetworkProfileTypeCURATED = NetworkProfileType' "CURATED"

pattern NetworkProfileTypePRIVATE :: NetworkProfileType
pattern NetworkProfileTypePRIVATE = NetworkProfileType' "PRIVATE"

{-# COMPLETE
  NetworkProfileTypeCURATED,
  NetworkProfileTypePRIVATE,
  NetworkProfileType'
  #-}

instance Prelude.FromText NetworkProfileType where
  parser = NetworkProfileType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkProfileType where
  toText (NetworkProfileType' x) = x

instance Prelude.Hashable NetworkProfileType

instance Prelude.NFData NetworkProfileType

instance Prelude.ToByteString NetworkProfileType

instance Prelude.ToQuery NetworkProfileType

instance Prelude.ToHeader NetworkProfileType

instance Prelude.ToJSON NetworkProfileType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NetworkProfileType where
  parseJSON = Prelude.parseJSONText "NetworkProfileType"
