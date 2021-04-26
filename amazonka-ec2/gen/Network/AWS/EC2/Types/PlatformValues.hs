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
-- Module      : Network.AWS.EC2.Types.PlatformValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlatformValues
  ( PlatformValues
      ( ..,
        PlatformValuesWindows
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype PlatformValues = PlatformValues'
  { fromPlatformValues ::
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

pattern PlatformValuesWindows :: PlatformValues
pattern PlatformValuesWindows = PlatformValues' "Windows"

{-# COMPLETE
  PlatformValuesWindows,
  PlatformValues'
  #-}

instance Prelude.FromText PlatformValues where
  parser = PlatformValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlatformValues where
  toText (PlatformValues' x) = x

instance Prelude.Hashable PlatformValues

instance Prelude.NFData PlatformValues

instance Prelude.ToByteString PlatformValues

instance Prelude.ToQuery PlatformValues

instance Prelude.ToHeader PlatformValues

instance Prelude.FromXML PlatformValues where
  parseXML = Prelude.parseXMLText "PlatformValues"
