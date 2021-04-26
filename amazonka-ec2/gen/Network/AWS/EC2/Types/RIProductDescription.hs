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
-- Module      : Network.AWS.EC2.Types.RIProductDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RIProductDescription
  ( RIProductDescription
      ( ..,
        RIProductDescriptionLinuxUNIX,
        RIProductDescriptionLinuxUNIXAmazonVPC,
        RIProductDescriptionWindows,
        RIProductDescriptionWindowsAmazonVPC
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype RIProductDescription = RIProductDescription'
  { fromRIProductDescription ::
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

pattern RIProductDescriptionLinuxUNIX :: RIProductDescription
pattern RIProductDescriptionLinuxUNIX = RIProductDescription' "Linux/UNIX"

pattern RIProductDescriptionLinuxUNIXAmazonVPC :: RIProductDescription
pattern RIProductDescriptionLinuxUNIXAmazonVPC = RIProductDescription' "Linux/UNIX (Amazon VPC)"

pattern RIProductDescriptionWindows :: RIProductDescription
pattern RIProductDescriptionWindows = RIProductDescription' "Windows"

pattern RIProductDescriptionWindowsAmazonVPC :: RIProductDescription
pattern RIProductDescriptionWindowsAmazonVPC = RIProductDescription' "Windows (Amazon VPC)"

{-# COMPLETE
  RIProductDescriptionLinuxUNIX,
  RIProductDescriptionLinuxUNIXAmazonVPC,
  RIProductDescriptionWindows,
  RIProductDescriptionWindowsAmazonVPC,
  RIProductDescription'
  #-}

instance Prelude.FromText RIProductDescription where
  parser = RIProductDescription' Prelude.<$> Prelude.takeText

instance Prelude.ToText RIProductDescription where
  toText (RIProductDescription' x) = x

instance Prelude.Hashable RIProductDescription

instance Prelude.NFData RIProductDescription

instance Prelude.ToByteString RIProductDescription

instance Prelude.ToQuery RIProductDescription

instance Prelude.ToHeader RIProductDescription

instance Prelude.FromXML RIProductDescription where
  parseXML = Prelude.parseXMLText "RIProductDescription"
