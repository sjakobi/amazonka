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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.DASHFragmentSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.DASHFragmentSelectorType
  ( DASHFragmentSelectorType
      ( ..,
        DASHFragmentSelectorTypePRODUCERTIMESTAMP,
        DASHFragmentSelectorTypeSERVERTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DASHFragmentSelectorType = DASHFragmentSelectorType'
  { fromDASHFragmentSelectorType ::
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

pattern DASHFragmentSelectorTypePRODUCERTIMESTAMP :: DASHFragmentSelectorType
pattern DASHFragmentSelectorTypePRODUCERTIMESTAMP = DASHFragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern DASHFragmentSelectorTypeSERVERTIMESTAMP :: DASHFragmentSelectorType
pattern DASHFragmentSelectorTypeSERVERTIMESTAMP = DASHFragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  DASHFragmentSelectorTypePRODUCERTIMESTAMP,
  DASHFragmentSelectorTypeSERVERTIMESTAMP,
  DASHFragmentSelectorType'
  #-}

instance Prelude.FromText DASHFragmentSelectorType where
  parser = DASHFragmentSelectorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DASHFragmentSelectorType where
  toText (DASHFragmentSelectorType' x) = x

instance Prelude.Hashable DASHFragmentSelectorType

instance Prelude.NFData DASHFragmentSelectorType

instance Prelude.ToByteString DASHFragmentSelectorType

instance Prelude.ToQuery DASHFragmentSelectorType

instance Prelude.ToHeader DASHFragmentSelectorType

instance Prelude.ToJSON DASHFragmentSelectorType where
  toJSON = Prelude.toJSONText
