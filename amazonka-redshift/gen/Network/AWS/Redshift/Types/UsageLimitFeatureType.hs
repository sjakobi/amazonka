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
-- Module      : Network.AWS.Redshift.Types.UsageLimitFeatureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimitFeatureType
  ( UsageLimitFeatureType
      ( ..,
        UsageLimitFeatureTypeConcurrencyScaling,
        UsageLimitFeatureTypeSpectrum
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype UsageLimitFeatureType = UsageLimitFeatureType'
  { fromUsageLimitFeatureType ::
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

pattern UsageLimitFeatureTypeConcurrencyScaling :: UsageLimitFeatureType
pattern UsageLimitFeatureTypeConcurrencyScaling = UsageLimitFeatureType' "concurrency-scaling"

pattern UsageLimitFeatureTypeSpectrum :: UsageLimitFeatureType
pattern UsageLimitFeatureTypeSpectrum = UsageLimitFeatureType' "spectrum"

{-# COMPLETE
  UsageLimitFeatureTypeConcurrencyScaling,
  UsageLimitFeatureTypeSpectrum,
  UsageLimitFeatureType'
  #-}

instance Prelude.FromText UsageLimitFeatureType where
  parser = UsageLimitFeatureType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageLimitFeatureType where
  toText (UsageLimitFeatureType' x) = x

instance Prelude.Hashable UsageLimitFeatureType

instance Prelude.NFData UsageLimitFeatureType

instance Prelude.ToByteString UsageLimitFeatureType

instance Prelude.ToQuery UsageLimitFeatureType

instance Prelude.ToHeader UsageLimitFeatureType

instance Prelude.FromXML UsageLimitFeatureType where
  parseXML = Prelude.parseXMLText "UsageLimitFeatureType"
