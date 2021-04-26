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
-- Module      : Network.AWS.CloudFront.Types.PriceClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.PriceClass
  ( PriceClass
      ( ..,
        PriceClassPriceClass100,
        PriceClassPriceClass200,
        PriceClassPriceClassAll
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PriceClass = PriceClass'
  { fromPriceClass ::
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

pattern PriceClassPriceClass100 :: PriceClass
pattern PriceClassPriceClass100 = PriceClass' "PriceClass_100"

pattern PriceClassPriceClass200 :: PriceClass
pattern PriceClassPriceClass200 = PriceClass' "PriceClass_200"

pattern PriceClassPriceClassAll :: PriceClass
pattern PriceClassPriceClassAll = PriceClass' "PriceClass_All"

{-# COMPLETE
  PriceClassPriceClass100,
  PriceClassPriceClass200,
  PriceClassPriceClassAll,
  PriceClass'
  #-}

instance Prelude.FromText PriceClass where
  parser = PriceClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText PriceClass where
  toText (PriceClass' x) = x

instance Prelude.Hashable PriceClass

instance Prelude.NFData PriceClass

instance Prelude.ToByteString PriceClass

instance Prelude.ToQuery PriceClass

instance Prelude.ToHeader PriceClass

instance Prelude.FromXML PriceClass where
  parseXML = Prelude.parseXMLText "PriceClass"

instance Prelude.ToXML PriceClass where
  toXML = Prelude.toXMLText
