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
-- Module      : Network.AWS.EC2.Types.UnlimitedSupportedInstanceFamily
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UnlimitedSupportedInstanceFamily
  ( UnlimitedSupportedInstanceFamily
      ( ..,
        UnlimitedSupportedInstanceFamilyT2,
        UnlimitedSupportedInstanceFamilyT3,
        UnlimitedSupportedInstanceFamilyT3a,
        UnlimitedSupportedInstanceFamilyT4g
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype UnlimitedSupportedInstanceFamily = UnlimitedSupportedInstanceFamily'
  { fromUnlimitedSupportedInstanceFamily ::
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

pattern UnlimitedSupportedInstanceFamilyT2 :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamilyT2 = UnlimitedSupportedInstanceFamily' "t2"

pattern UnlimitedSupportedInstanceFamilyT3 :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamilyT3 = UnlimitedSupportedInstanceFamily' "t3"

pattern UnlimitedSupportedInstanceFamilyT3a :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamilyT3a = UnlimitedSupportedInstanceFamily' "t3a"

pattern UnlimitedSupportedInstanceFamilyT4g :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamilyT4g = UnlimitedSupportedInstanceFamily' "t4g"

{-# COMPLETE
  UnlimitedSupportedInstanceFamilyT2,
  UnlimitedSupportedInstanceFamilyT3,
  UnlimitedSupportedInstanceFamilyT3a,
  UnlimitedSupportedInstanceFamilyT4g,
  UnlimitedSupportedInstanceFamily'
  #-}

instance Prelude.FromText UnlimitedSupportedInstanceFamily where
  parser = UnlimitedSupportedInstanceFamily' Prelude.<$> Prelude.takeText

instance Prelude.ToText UnlimitedSupportedInstanceFamily where
  toText (UnlimitedSupportedInstanceFamily' x) = x

instance Prelude.Hashable UnlimitedSupportedInstanceFamily

instance Prelude.NFData UnlimitedSupportedInstanceFamily

instance Prelude.ToByteString UnlimitedSupportedInstanceFamily

instance Prelude.ToQuery UnlimitedSupportedInstanceFamily

instance Prelude.ToHeader UnlimitedSupportedInstanceFamily

instance Prelude.FromXML UnlimitedSupportedInstanceFamily where
  parseXML = Prelude.parseXMLText "UnlimitedSupportedInstanceFamily"
