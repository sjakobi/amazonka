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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSFragmentSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSFragmentSelectorType
  ( HLSFragmentSelectorType
      ( ..,
        HLSFragmentSelectorTypePRODUCERTIMESTAMP,
        HLSFragmentSelectorTypeSERVERTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HLSFragmentSelectorType = HLSFragmentSelectorType'
  { fromHLSFragmentSelectorType ::
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

pattern HLSFragmentSelectorTypePRODUCERTIMESTAMP :: HLSFragmentSelectorType
pattern HLSFragmentSelectorTypePRODUCERTIMESTAMP = HLSFragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern HLSFragmentSelectorTypeSERVERTIMESTAMP :: HLSFragmentSelectorType
pattern HLSFragmentSelectorTypeSERVERTIMESTAMP = HLSFragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  HLSFragmentSelectorTypePRODUCERTIMESTAMP,
  HLSFragmentSelectorTypeSERVERTIMESTAMP,
  HLSFragmentSelectorType'
  #-}

instance Prelude.FromText HLSFragmentSelectorType where
  parser = HLSFragmentSelectorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HLSFragmentSelectorType where
  toText (HLSFragmentSelectorType' x) = x

instance Prelude.Hashable HLSFragmentSelectorType

instance Prelude.NFData HLSFragmentSelectorType

instance Prelude.ToByteString HLSFragmentSelectorType

instance Prelude.ToQuery HLSFragmentSelectorType

instance Prelude.ToHeader HLSFragmentSelectorType

instance Prelude.ToJSON HLSFragmentSelectorType where
  toJSON = Prelude.toJSONText
