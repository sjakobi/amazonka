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
-- Module      : Network.AWS.EC2.Types.OfferingClassType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OfferingClassType
  ( OfferingClassType
      ( ..,
        OfferingClassTypeConvertible,
        OfferingClassTypeStandard
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype OfferingClassType = OfferingClassType'
  { fromOfferingClassType ::
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

pattern OfferingClassTypeConvertible :: OfferingClassType
pattern OfferingClassTypeConvertible = OfferingClassType' "convertible"

pattern OfferingClassTypeStandard :: OfferingClassType
pattern OfferingClassTypeStandard = OfferingClassType' "standard"

{-# COMPLETE
  OfferingClassTypeConvertible,
  OfferingClassTypeStandard,
  OfferingClassType'
  #-}

instance Prelude.FromText OfferingClassType where
  parser = OfferingClassType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OfferingClassType where
  toText (OfferingClassType' x) = x

instance Prelude.Hashable OfferingClassType

instance Prelude.NFData OfferingClassType

instance Prelude.ToByteString OfferingClassType

instance Prelude.ToQuery OfferingClassType

instance Prelude.ToHeader OfferingClassType

instance Prelude.FromXML OfferingClassType where
  parseXML = Prelude.parseXMLText "OfferingClassType"
