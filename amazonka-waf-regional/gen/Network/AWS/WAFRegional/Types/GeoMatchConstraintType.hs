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
-- Module      : Network.AWS.WAFRegional.Types.GeoMatchConstraintType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.GeoMatchConstraintType
  ( GeoMatchConstraintType
      ( ..,
        GeoMatchConstraintTypeCountry
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GeoMatchConstraintType = GeoMatchConstraintType'
  { fromGeoMatchConstraintType ::
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

pattern GeoMatchConstraintTypeCountry :: GeoMatchConstraintType
pattern GeoMatchConstraintTypeCountry = GeoMatchConstraintType' "Country"

{-# COMPLETE
  GeoMatchConstraintTypeCountry,
  GeoMatchConstraintType'
  #-}

instance Prelude.FromText GeoMatchConstraintType where
  parser = GeoMatchConstraintType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GeoMatchConstraintType where
  toText (GeoMatchConstraintType' x) = x

instance Prelude.Hashable GeoMatchConstraintType

instance Prelude.NFData GeoMatchConstraintType

instance Prelude.ToByteString GeoMatchConstraintType

instance Prelude.ToQuery GeoMatchConstraintType

instance Prelude.ToHeader GeoMatchConstraintType

instance Prelude.ToJSON GeoMatchConstraintType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GeoMatchConstraintType where
  parseJSON = Prelude.parseJSONText "GeoMatchConstraintType"
