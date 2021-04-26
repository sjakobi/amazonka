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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.FragmentSelectorType
  ( FragmentSelectorType
      ( ..,
        FragmentSelectorTypePRODUCERTIMESTAMP,
        FragmentSelectorTypeSERVERTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FragmentSelectorType = FragmentSelectorType'
  { fromFragmentSelectorType ::
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

pattern FragmentSelectorTypePRODUCERTIMESTAMP :: FragmentSelectorType
pattern FragmentSelectorTypePRODUCERTIMESTAMP = FragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern FragmentSelectorTypeSERVERTIMESTAMP :: FragmentSelectorType
pattern FragmentSelectorTypeSERVERTIMESTAMP = FragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  FragmentSelectorTypePRODUCERTIMESTAMP,
  FragmentSelectorTypeSERVERTIMESTAMP,
  FragmentSelectorType'
  #-}

instance Prelude.FromText FragmentSelectorType where
  parser = FragmentSelectorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FragmentSelectorType where
  toText (FragmentSelectorType' x) = x

instance Prelude.Hashable FragmentSelectorType

instance Prelude.NFData FragmentSelectorType

instance Prelude.ToByteString FragmentSelectorType

instance Prelude.ToQuery FragmentSelectorType

instance Prelude.ToHeader FragmentSelectorType

instance Prelude.ToJSON FragmentSelectorType where
  toJSON = Prelude.toJSONText
