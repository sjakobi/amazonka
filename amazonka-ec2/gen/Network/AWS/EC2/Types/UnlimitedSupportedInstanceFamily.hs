{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.UnlimitedSupportedInstanceFamily
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UnlimitedSupportedInstanceFamily
  ( UnlimitedSupportedInstanceFamily
      ( ..,
        T2,
        T3,
        T3a,
        T4g
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data UnlimitedSupportedInstanceFamily
  = UnlimitedSupportedInstanceFamily'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern T2 :: UnlimitedSupportedInstanceFamily
pattern T2 = UnlimitedSupportedInstanceFamily' "t2"

pattern T3 :: UnlimitedSupportedInstanceFamily
pattern T3 = UnlimitedSupportedInstanceFamily' "t3"

pattern T3a :: UnlimitedSupportedInstanceFamily
pattern T3a = UnlimitedSupportedInstanceFamily' "t3a"

pattern T4g :: UnlimitedSupportedInstanceFamily
pattern T4g = UnlimitedSupportedInstanceFamily' "t4g"

{-# COMPLETE
  T2,
  T3,
  T3a,
  T4g,
  UnlimitedSupportedInstanceFamily'
  #-}

instance FromText UnlimitedSupportedInstanceFamily where
  parser = (UnlimitedSupportedInstanceFamily' . mk) <$> takeText

instance ToText UnlimitedSupportedInstanceFamily where
  toText (UnlimitedSupportedInstanceFamily' ci) = original ci

instance Hashable UnlimitedSupportedInstanceFamily

instance NFData UnlimitedSupportedInstanceFamily

instance ToByteString UnlimitedSupportedInstanceFamily

instance ToQuery UnlimitedSupportedInstanceFamily

instance ToHeader UnlimitedSupportedInstanceFamily

instance FromXML UnlimitedSupportedInstanceFamily where
  parseXML = parseXMLText "UnlimitedSupportedInstanceFamily"
