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
-- Module      : Network.AWS.SES.Types.DimensionValueSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.DimensionValueSource
  ( DimensionValueSource
      ( ..,
        DimensionValueSourceEmailHeader,
        DimensionValueSourceLinkTag,
        DimensionValueSourceMessageTag
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DimensionValueSource = DimensionValueSource'
  { fromDimensionValueSource ::
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

pattern DimensionValueSourceEmailHeader :: DimensionValueSource
pattern DimensionValueSourceEmailHeader = DimensionValueSource' "emailHeader"

pattern DimensionValueSourceLinkTag :: DimensionValueSource
pattern DimensionValueSourceLinkTag = DimensionValueSource' "linkTag"

pattern DimensionValueSourceMessageTag :: DimensionValueSource
pattern DimensionValueSourceMessageTag = DimensionValueSource' "messageTag"

{-# COMPLETE
  DimensionValueSourceEmailHeader,
  DimensionValueSourceLinkTag,
  DimensionValueSourceMessageTag,
  DimensionValueSource'
  #-}

instance Prelude.FromText DimensionValueSource where
  parser = DimensionValueSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText DimensionValueSource where
  toText (DimensionValueSource' x) = x

instance Prelude.Hashable DimensionValueSource

instance Prelude.NFData DimensionValueSource

instance Prelude.ToByteString DimensionValueSource

instance Prelude.ToQuery DimensionValueSource

instance Prelude.ToHeader DimensionValueSource

instance Prelude.FromXML DimensionValueSource where
  parseXML = Prelude.parseXMLText "DimensionValueSource"
