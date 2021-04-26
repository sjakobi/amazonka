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
-- Module      : Network.AWS.EC2.Types.AllowsMultipleInstanceTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AllowsMultipleInstanceTypes
  ( AllowsMultipleInstanceTypes
      ( ..,
        AllowsMultipleInstanceTypesON,
        AllowsMultipleInstanceTypesOff
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AllowsMultipleInstanceTypes = AllowsMultipleInstanceTypes'
  { fromAllowsMultipleInstanceTypes ::
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

pattern AllowsMultipleInstanceTypesON :: AllowsMultipleInstanceTypes
pattern AllowsMultipleInstanceTypesON = AllowsMultipleInstanceTypes' "on"

pattern AllowsMultipleInstanceTypesOff :: AllowsMultipleInstanceTypes
pattern AllowsMultipleInstanceTypesOff = AllowsMultipleInstanceTypes' "off"

{-# COMPLETE
  AllowsMultipleInstanceTypesON,
  AllowsMultipleInstanceTypesOff,
  AllowsMultipleInstanceTypes'
  #-}

instance Prelude.FromText AllowsMultipleInstanceTypes where
  parser = AllowsMultipleInstanceTypes' Prelude.<$> Prelude.takeText

instance Prelude.ToText AllowsMultipleInstanceTypes where
  toText (AllowsMultipleInstanceTypes' x) = x

instance Prelude.Hashable AllowsMultipleInstanceTypes

instance Prelude.NFData AllowsMultipleInstanceTypes

instance Prelude.ToByteString AllowsMultipleInstanceTypes

instance Prelude.ToQuery AllowsMultipleInstanceTypes

instance Prelude.ToHeader AllowsMultipleInstanceTypes

instance Prelude.FromXML AllowsMultipleInstanceTypes where
  parseXML = Prelude.parseXMLText "AllowsMultipleInstanceTypes"
