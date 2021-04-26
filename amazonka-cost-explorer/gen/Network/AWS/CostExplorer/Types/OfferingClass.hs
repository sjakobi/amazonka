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
-- Module      : Network.AWS.CostExplorer.Types.OfferingClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.OfferingClass
  ( OfferingClass
      ( ..,
        OfferingClassCONVERTIBLE,
        OfferingClassSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OfferingClass = OfferingClass'
  { fromOfferingClass ::
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

pattern OfferingClassCONVERTIBLE :: OfferingClass
pattern OfferingClassCONVERTIBLE = OfferingClass' "CONVERTIBLE"

pattern OfferingClassSTANDARD :: OfferingClass
pattern OfferingClassSTANDARD = OfferingClass' "STANDARD"

{-# COMPLETE
  OfferingClassCONVERTIBLE,
  OfferingClassSTANDARD,
  OfferingClass'
  #-}

instance Prelude.FromText OfferingClass where
  parser = OfferingClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText OfferingClass where
  toText (OfferingClass' x) = x

instance Prelude.Hashable OfferingClass

instance Prelude.NFData OfferingClass

instance Prelude.ToByteString OfferingClass

instance Prelude.ToQuery OfferingClass

instance Prelude.ToHeader OfferingClass

instance Prelude.ToJSON OfferingClass where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OfferingClass where
  parseJSON = Prelude.parseJSONText "OfferingClass"
