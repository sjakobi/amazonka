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
-- Module      : Network.AWS.EC2.Types.SpotInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotInstanceType
  ( SpotInstanceType
      ( ..,
        SpotInstanceTypeOneTime,
        SpotInstanceTypePersistent
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SpotInstanceType = SpotInstanceType'
  { fromSpotInstanceType ::
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

pattern SpotInstanceTypeOneTime :: SpotInstanceType
pattern SpotInstanceTypeOneTime = SpotInstanceType' "one-time"

pattern SpotInstanceTypePersistent :: SpotInstanceType
pattern SpotInstanceTypePersistent = SpotInstanceType' "persistent"

{-# COMPLETE
  SpotInstanceTypeOneTime,
  SpotInstanceTypePersistent,
  SpotInstanceType'
  #-}

instance Prelude.FromText SpotInstanceType where
  parser = SpotInstanceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SpotInstanceType where
  toText (SpotInstanceType' x) = x

instance Prelude.Hashable SpotInstanceType

instance Prelude.NFData SpotInstanceType

instance Prelude.ToByteString SpotInstanceType

instance Prelude.ToQuery SpotInstanceType

instance Prelude.ToHeader SpotInstanceType

instance Prelude.FromXML SpotInstanceType where
  parseXML = Prelude.parseXMLText "SpotInstanceType"
