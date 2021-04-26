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
-- Module      : Network.AWS.EC2.Types.AutoPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AutoPlacement
  ( AutoPlacement
      ( ..,
        AutoPlacementON,
        AutoPlacementOff
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AutoPlacement = AutoPlacement'
  { fromAutoPlacement ::
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

pattern AutoPlacementON :: AutoPlacement
pattern AutoPlacementON = AutoPlacement' "on"

pattern AutoPlacementOff :: AutoPlacement
pattern AutoPlacementOff = AutoPlacement' "off"

{-# COMPLETE
  AutoPlacementON,
  AutoPlacementOff,
  AutoPlacement'
  #-}

instance Prelude.FromText AutoPlacement where
  parser = AutoPlacement' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoPlacement where
  toText (AutoPlacement' x) = x

instance Prelude.Hashable AutoPlacement

instance Prelude.NFData AutoPlacement

instance Prelude.ToByteString AutoPlacement

instance Prelude.ToQuery AutoPlacement

instance Prelude.ToHeader AutoPlacement

instance Prelude.FromXML AutoPlacement where
  parseXML = Prelude.parseXMLText "AutoPlacement"
